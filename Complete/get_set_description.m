function[dataTe] = get_set_description(Mv)

data= readtable('less_date.csv');
dataD = data(:,3);
dataD = table2array(dataD);

d = dataD(Mv,1);
d = char(d);

isSix = cellfun(@(x)isequal(x,d),dataD);
[row,~] = find(isSix);

dataTe = data(row(:),:);

end