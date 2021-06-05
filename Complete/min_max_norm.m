function [norm_x] = min_max_norm(x)

min_x = min(x(:));
max_x = max(x(:));

norm_x =   (x - min_x) / (max_x - min_x);

end