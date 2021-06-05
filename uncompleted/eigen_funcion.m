function[] = eigen_funcion()
%Primero Cargamos los datos
%Es necesario eliminar el primer renglon 
data_weigths = readtable('weight_ML.csv');
data_weigths = data_weigths{:,:};
data_weigths(1,:) = []; 
%despues es necesario obtener la matriz de covarianza
% esto por medio de la funcion cov_funciton.
%temporalmente lo haremos directo.
N = length(data_weigths);
X = data_weigths;
X_t = X.';
S = (X*X_t)./N;

% S que es la matriz de covarianza, ya es una matriz caudrada, 
% pero si no lo fuera, recuerda que puede volver cuadrada 
%culaquier matriz multiplicandola por su inversa
%S_T = S.';
%S_SQ = S*S_T;
%un buen video que explica eigendesomposition:
%https://www.youtube.com/watch?v=-1iULsGndG8
%A'*A*W=Lambda*W
%matlab function: [evecs,evals] = eig(A'*A) 



% tratando de obtener los eigendescompotition
% lo vamos a hacer por medio de QR algorithm
%Lo primero es obtener QR matrix
A = S;
% [Q,R] = qr(S);
for i=1:20
    [Q,R] = qr(A);
    A = Q*R;
end
disp(A)
end