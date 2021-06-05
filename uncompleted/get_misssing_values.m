function[r] = get_misssing_values()

datap= readtable('less_date.csv');
data = datap(:,5);
data = table2array(data);

[r, ~] = find(data(:,1)==0);

end