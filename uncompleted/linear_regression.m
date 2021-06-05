function [a,b] = linear_regression(x,y,n,x0)
%Estimacion de \overline{y} y \overline{x}
%\overline{y} = \fracc{1}{n} \sum_{i=1}^n y_i

overline_y = (1/n)*sum(y);

%\overline{x} = \fracc{1}{n} \sum_{i=1}^n x_i

overline_x = (1/n)*sum(x);

%\beta_1
%\hat{\beta_1} = \frac{\sum_{i=1}^n y_i - \frac{(\sum_{i=1}^n y_i)(\sum_{i=1}^n x_i)}{n}}{\sum_{i=1}^n x_i^2 - \frac{(\sum_{i=1}^n x_i)^2}{n}}
%S_{xx} = \sum_{i=1}^n (x_i - \overline{x})^2
%S_{xy} = \sum_{i=1}^n y_i (x_i - \overline{x})

Sxx = sum((x-overline_x).^2);
Sxy = sum(y.*(x-overline_x));
hat_beta_1 = Sxy./Sxx;
disp("beta1")
disp(hat_beta_1)

%Estimacion de \beta_0 y \beta_1
%\beta_0
%\hat{\beta_0} = \overline{y} - \hat{\beta_1} \overline{x}

hat_beta_0 = overline_y - (hat_beta_1 * overline_x);
disp(hat_beta_0)
%Es importante mencionar la ecuacion:
%\hat{y} = \hat{\beta_0} + \hat{\beta_0} x

hat_y = hat_beta_0 + (hat_beta_1 .* x);

%Una vez obtenidos los valores previos, es necesario obtener 
%la prediccion de os nuevos valores

[a,b] = prediction(y,overline_x,n,Sxy,Sxx,hat_beta_0,hat_beta_1,x0);

%plot(hat_y)
%hold on
%plot(x,y,'*')
%hold on
%yt = 26.768 + 0.644*x;
%plot(yt)
%hold off
%disp(a)
%disp(b)
end