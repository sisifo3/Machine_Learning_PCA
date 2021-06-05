function[] = naive_PCA()
%Primero Cargamos los datos
%Es necesario eliminar el primer renglon 
data_weigths = readtable('weight_ML.csv');
data_weigths = data_weigths{:,:};
data_weigths(1,:) = []; 
X = data_weigths;


%El primer paso es sentralizar los datos
%esto quiere decir que data = data - mean(data)

len = size(X,2);
for i = 1 : len
    X(:,i) = X(:,i)-mean_d(X(:,i));
end


%Es necesario obtener la covarianza que viene dada por
%cov(X) = X'*X
% En este caso con la data centralizada 
% cov(X_hat) = X_hat*X_hat'
%V' = Transpose(V)

Xt = X.';
Xs = Xt*X;

% Despues de obtener la matriz de covarianza 
% aplicamos power method para obtener eigenvectores

[eig_vec] = Power_Method(Xs);
%disp(eig_vec(end,:))

%La funcion eig da:
%U : eigenvectors
%D : eigenvalues
[U,D] = eig(Xs);
%disp(D(2,:))


%Despues de obtener los eigenvectores, es necesario
% obtener 
%final data = Feature vector * data ajusted
% RFW : RowFeatureVector "traspose eigenvectors"
% RDA : RowDataAdjust "mean-ajusted data transpose"

RFW = eig_vec.';
RDA = X.';
FD = RFW * RDA;

disp(FD(1,:))
end