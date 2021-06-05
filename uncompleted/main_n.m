function [a_data,b_data,ym_data] = main_n()
[r] = get_misssing_values();
len = length(r);
a_data = zeros(len,1);
b_data = zeros(len,1);
ym_data = zeros(len,1);
for i = 1 : len
    Mv = (r(i));
    [country,sk,x0] = get_values(Mv);
    [dataTe] = get_set_description(Mv);
    [dataTe2] = clean_Country(dataTe,country);
    [dataTe3] = clean_StockCode(dataTe2,sk);
    [a,b,ym] = imputation_methods(dataTe3,x0);
    a_data(i) = a;
    b_data(i) = b;
    ym_data(i) = ym;
end


end