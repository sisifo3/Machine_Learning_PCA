function [eig_vec] = Power_Method(A)
%Power Method.
%b(k+1) = Ab(b)/norm(Ab(k))
%B = A - lambda/|v1|^2 v1*v1'


% A = [0 1 3; 1 2 1; 4 9 7];
len = length(A);
eig_vec = zeros(len,len);

for i =1 : len
    disp(i)
    A(isnan(A))=0;

    [v,lambda] =get_v(A);
    eig_vec(:,i) = v(:,1);
    
    [m,p] = max(abs(v));
    vn = v./v(p);
    vt = v.';
    A = A - ((lambda/vn.^2) * v * vt);
    
    A(isnan(A))=0;

    % dbstop if naninf

end

%disp(eig_vec)

%Obtener los siguientes valores 
%eig
A = [0 1 3; 1 2 1; 4 9 7];
[U,D] = eig(A);
v = [];
v(:,1) = U(:,1) / max(abs(U(:,1)));
v(:,2) = U(:,2) / max(abs(U(:,2)));
v(:,3) = U(:,3) / max(abs(U(:,3)));

%disp(v)
end