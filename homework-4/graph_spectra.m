% Spectral Clustering
% Read file [Can also change to example2.dat]
file = csvread("example2.dat");

% Get first two columns from file one (vertices1 and vertices2)
vertices1 = file(:, 1);
vertices2 = file(:, 2);
Graph = graph(vertices1, vertices2);

% Create Adjacency Matrix
AdjacentMatrixSparse = adjacency(Graph);
AdjacencyMatrix = full(AdjacentMatrixSparse);

% Convert to undirected
Graph = graph(AdjacencyMatrix);

% Visualize sparsity pattern of the adjacent matrix (we can see 4 clusters a-priori)
figure;
hold on; % Retain plots
spy(AdjacencyMatrix, 8);

% Create Degree Matrix
DegreeMatrix = diag(sum(AdjacencyMatrix, 2));

% Create Laplacian Matrix 
TransfDegreeMatrix = DegreeMatrix ^ (-1 / 2);
LaplacianMatrix = TransfDegreeMatrix * AdjacencyMatrix * TransfDegreeMatrix;

% Get all the eigenvectors of laplacian matrix
[EigenVectors, EigenValues] = eig(LaplacianMatrix);
EigenValuesDiag = flip(diag(EigenValues));

figure;
hold on; % Retain plots
plot(EigenValuesDiag);

% Get the best estimation of K by estimating which eigenvalue has the biggest eigengap
NegativeEigenGaps = diff(EigenValuesDiag);
clusterSize = find(NegativeEigenGaps == min(NegativeEigenGaps));
disp("Selected k: " + clusterSize)

% After finding the number of clusters, a new matrix containing top K eigenvectors is formed and then the rows of that matrix are normalized
FlippedEigenVectors = flip(EigenVectors, 2);
TopKEigenVectors = FlippedEigenVectors(:, 1:clusterSize);
NormEigenVectors = normr(TopKEigenVectors);

% Apply K-means clustering algorithm to the normalized matrix in order to assign cluster to every point
clusteredIndexes = kmeans(NormEigenVectors, clusterSize, 'Replicates', 5);

% Create figure window
figure;
hold on; % Retain plots

% Plot the results
GraphPlot = plot(Graph);
colors = ['r', 'g', 'b', 'y'];
for i = 1:clusterSize
    highlight(GraphPlot, find(clusteredIndexes == i), 'NodeColor', colors(i))
end