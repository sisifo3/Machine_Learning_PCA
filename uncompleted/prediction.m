function[a,b] = prediction(y,overline_x,n,Sxy,Sxx,hat_beta_0,hat_beta_1,x0)
%Prediction of new observation.
%x0 : Es el valor observable.
%x0 = 56;

%\hat{y_0}  = \hat{\beta_0}  + \hat{\beta_1} x_0
hat_y0 = hat_beta_0 + (hat_beta_1 * x0);

%If we choose $\alpha = 0.05$, the critical value of t is $t_{0.025,18} = 2.101$.
t_alpha = 2.101;

%SS_T = \sum_{i=1}^n  y_i^2 - \frac{(\sum_{i=1}^n y_i)^2}{n};
SS_T = sum(y.^2) - ((sum(y)^2) /n); 

%SS_{Res} = SS_T - \hat{\beta} S_{xy}
SSRes = SS_T - (hat_beta_1 * Sxy);

%\hat{\sigma^2} = \frac{SS_{Res}}{n-2} = MS_{Res}
MSres = SSRes/(n-2);

%\hat{y_0} - t_{\alpha/2,n-2} \sqrt{MS_{Res}(1+\frac{1}{n} + \frac{(x_0 - \overline{x})^2}{Sxx})}
%
%\hat{y_0} + t_{\alpha/2,n-2} \sqrt{MS_{Res}(1+\frac{1}{n} + \frac{(x_0 - \overline{x})^2}{Sxx})}

a = hat_y0 - t_alpha * sqrt(MSres*(1 + (1/n) + (x0 - overline_x)^2 / Sxx)); 

b = hat_y0 + t_alpha * sqrt(MSres*(1 + (1/n) + (x0 - overline_x)^2 / Sxx)); 


end