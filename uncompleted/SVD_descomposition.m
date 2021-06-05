function[] = SVD_descomposition()
%Primero Cargamos los datos
%Es necesario eliminar el primer renglon 
data_weigths = readtable('weight_ML.csv');
data_weigths = data_weigths{:,:};
data_weigths(1,:) = []; 
X = data_weigths;

%Es necesario obtener
%V' = Transpose(V)
%A = USV'
Xt = X.';
Xs = X*Xt;
disp(size(Xs))

%La funcion eig da:
%U : eigenvectors
%D : eigenvalues
[U,D] = eig(Xs);
disp(size(U))
disp(size(D))



end