function[country,sk,x0] = get_values(Mv)
data= readtable('less_date.csv');

%obtener country
data_c = data(:,7);
data_c = table2array(data_c);
country = data_c(Mv,1);

%obtener StockCode
data_sk = data(:,2);
data_sk = table2array(data_sk);
sk = data_sk(Mv,1);

%obtener X0
data_x0 = data(:,4);
data_x0 = table2array(data_x0);
x0 = data_x0(Mv,1);

end