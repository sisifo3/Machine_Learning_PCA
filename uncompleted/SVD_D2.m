function[] = SVD_D2()
%Primero Cargamos los datos
%Es necesario eliminar el primer renglon 
data_weigths = readtable('weight_ML.csv');
data_weigths = data_weigths{:,:};
data_weigths(1,:) = []; 
A = data_weigths;
%Para obtener los eigenvalues por SVD
%Es nevesario tener en cuenta la siguiene formula:
%A_mn = U_mm * S_mn * V'_nn

%U_mm = A*A'
% At : A transpose 
At = A.';
U = A*At;
disp(size(U))






end