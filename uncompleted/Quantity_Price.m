function[dataD1] = Quantity_Price(row,datap)

%data= readtable('Quantity_Price.csv');
data(:,1) = datap(:,4);
data(:,2) = datap(:,5);
data = table2array(data);
data = abs(data);
data = num2cell(data);


dataD1 = zeros(length(row),2);
dataD1 = num2cell(dataD1);

dataD1(:,:) = data(row(:),:);


end