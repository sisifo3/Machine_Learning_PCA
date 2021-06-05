function [data] = stock_code(row,datap)

%datask= readtable('SK_Quantity_Price.csv');
datask = datap;
datask = datask(:,2);
datask = table2array(datask);

data(:,:) = datask(row(:),:);

end