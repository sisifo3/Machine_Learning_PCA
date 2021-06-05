function [] = regressionpertable(dataTe3)
%[dataTe3] = foundpertable();
%{
data(:,1) = dataTe3(:,4);
data(:,2) = dataTe3(:,5);
data = table2array(data);

n = length(data);
x0 = 1;
[r, ~] = find(data(:,2)==0);
data(r(:),:) =[];
disp(data)
x = data(:,1);
y = data(:,2);
x = abs(x);
y = abs(y);
%}
x = [95,85,80,70,60];
y = [85,95,70,65,70];
n= 5;
x0 = 100;
[a,b] = linear_regression(x,y,n,x0);
disp(a)
disp(b)




end