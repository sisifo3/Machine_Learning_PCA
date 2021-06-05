function[row,dataD1] = description(Mv,data)

%dataD= readtable('Description.csv');
dataD = data(:,3);
dataD = table2array(dataD);

d = dataD(Mv,1);
d = char(d);

isSix = cellfun(@(x)isequal(x,d),dataD);
[row,~] = find(isSix);

dataD1 = zeros(length(row),1);
dataD1 = num2cell(dataD1);

dataD1(:,:) = dataD(row(:),:);

end