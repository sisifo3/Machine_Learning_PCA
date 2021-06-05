function y = mean_d(x)
%mean : 1/n * sum(x)
n = size(x,1);
a = sum(x);
y = a/n;

end