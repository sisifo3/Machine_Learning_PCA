function[] = function_mean()%matriz_w)
%En una diapositiva y en un video dice que para optener la covarianza de
% una matrix es:
% S=1/n(T*T')
%https://www.youtube.com/watch?v=Bt4zfx2R9vA
%http://users.stat.umn.edu/~helwig/notes/datamat-Notes.pdf
%cov(X) = (X*X')/n

data_weigths = readtable('weight_ML.csv');
data_weigths = data_weigths{:,:};
% disp(data_weigths(1,[1:100]))
data_weigths(1,:) = []; 
% disp(data_weigths(1,[1:100]))
N = length(data_weigths);

X = data_weigths;

X_t = X.';
S = (X*X_t)./N;
disp(S(1,[1:100]))

end