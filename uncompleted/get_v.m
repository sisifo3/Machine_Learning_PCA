function[b0,l1] =get_v(A)
% Para Aplicar Power Method 
% Este es un algoritmo iterativo 
% esta definido por la formula
% b(k+1) = Ab(b)/norm(Ab(k))

len = length(A);
lamb = [];
b0 = ones(len,1);
eps = 10^(-4);
err = 1;
la_old = 0;
%disp(len)
%disp(length(b0))


while err> eps
    b0(isnan(b0))=0;
    b1 = A * b0;
    [m,p] = max(abs(b1));
    la_new = b1(p);
    la = m;
    lamb = [lamb; la];
    err =  abs(la_new-la_old);
    b2 = b1./b1(p);
    b0 = b2;
    la_old = la_new;
    b0(isnan(b0))=0;

    
end

l1 = lamb(end);

end