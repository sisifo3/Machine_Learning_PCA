function[dataD] =  invoice(row,datap)

data= datap;%readtable('Invoice.csv');
data = data(:,1);
data = table2array(data);

dataD(:,:) = data(row(:),:);


end