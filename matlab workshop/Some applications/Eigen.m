%This script visually shows the eigen values

vectors = randn(2,2000);
nVectors = normc(vectors);
X = nVectors(1,:);
Y = nVectors(2,:);

plot(X,Y,'ro');
title('Eigen Vectors');

matrix = [5 2; 3 3];
transform = matrix*nVectors;
Xt = transform(1,:);
Yt = transform(2,:);

hold on;
plot(Xt,Yt,'bo');

[EigenVectors, EigenValues] = eig(matrix);
line = linspace(-5,5,1000);
Eig1Line = line*(EigenVectors(2)/EigenVectors(1));
Eig2Line = line*(EigenVectors(4)/EigenVectors(3));

plot(line,Eig1Line,'g.');
plot(line,Eig2Line,'g.');

