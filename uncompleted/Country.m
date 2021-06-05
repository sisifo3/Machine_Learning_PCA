function[dataD1] = Country(row,datap)

%data= readtable('SK_Quantity_Price_Country.csv');
data = datap;
data = data(:,7);
data = table2array(data);

%isSix = cellfun(@(x)isequal(x,country),data);
%[row,~] = find(isSix);

dataD1(:,:) = data(row(:),:);

end