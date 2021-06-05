function[cell] = converttocell(Mv,data)

%Descripción
dataD = data(:,3);
dataD = table2array(dataD);

d = dataD(Mv,1);
d = char(d);

isSix = cellfun(@(x)isequal(x,d),dataD);
[row,~] = find(isSix);

dataD1 = zeros(length(row),1);
dataD1 = num2cell(dataD1);

dataD1(:,:) = dataD(row(:),:);

cell(:,1) = dataD1(:,1);

%Quantity_Precio
dataqp(:,1) = data(:,4);
dataqp(:,2) = data(:,5);
dataqp = table2array(dataqp);
dataqp = abs(dataqp);
dataqp = num2cell(dataqp);


dataD2 = zeros(length(row),2);
dataD2 = num2cell(dataD2);

dataD2(:,:) = dataqp(row(:),:);

cell(:,2) = dataD2(:,1);
cell(:,3) = dataD2(:,2);



end