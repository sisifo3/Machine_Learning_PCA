function [] = power_method()% A )
% Para Aplicar Power Method 
% Este es un algoritmo iterativo 
% esta definido por la formula
% b(k+1) = Ab(b)/norm(Ab(k))

A = [0 1 3; 1 2 1; 4 9 7];
len = length(A);
lamb = [];
b0 = ones(len,1);
eps = 10^(-4);
err = 1;
la_old = 0;
while err> eps

%for  i=1:22
    
    b1 = A * b0;
    [m,p] = max(abs(b1));
    la_new = b1(p);
    la = m;
    lamb = [lamb; la];
    err =  abs(la_new-la_old);
    b2 = b1./b1(p);
    b0 = b2;
    la_old = la_new;
    disp(err)
end

%Encontre que para encontrar el segundo v2 es necesario aplicar
%rewrite in terms of this basis:
% B = A - lambda/|v1|^2 v1*v1'
lambda1 = lamb(end);
evt = [];

for k = 1 :3
    v1 = b0;
    [m,p] = max(abs(v1));
    v1_n = v1./v1(p);
    v1T = v1.';
    B = A - (lambda1/v1_n.^2) * v1*v1T;
    [b0,lambda1] =get_v(B);
    evt(:,k) = b0(:,1);
end


%Para la funcion eig
%D : eigenvalues
%U : eigenvectors
%d : Vector of eigenvalues
[U,D] = eig(A);
% d = eig(A);
v = [];
v(:,1) = U(:,1) / max(abs(U(:,1)));
v(:,2) = U(:,2) / max(abs(U(:,2)));
v(:,3) = U(:,3) / max(abs(U(:,3)));

disp(v)
disp(evt)
end