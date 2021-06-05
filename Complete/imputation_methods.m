function[a,b,ym] = imputation_methods(set,x0)

x = set(:,4);
y = set(:,5);
n = length(x);

[a,b] = linear_regression(x,y,n,x0);

ym = mean_d(x);


end