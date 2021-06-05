function[dataTe3] = foundpertable()

Mv = 14341;

data= readtable('less_date.csv');

dataD = data(:,3);
dataD = table2array(dataD);

d = dataD(Mv,1);
d = char(d);

isSix = cellfun(@(x)isequal(x,d),dataD);
[row,~] = find(isSix);

dataTe = data(row(:),:);


%StockCode
dataDa = dataTe(:,2);
dataDa = table2array(dataDa);

sk = '22697';

isSix = cellfun(@(x)isequal(x,sk),dataDa);
[row,~] = find(isSix);

%dataD(:,:) = data(row(:),:);
dataTe2 = dataTe(row(:),:);


%country
dataDb = dataTe2(:,7);
dataDb = table2array(dataDb);
country = 'United Kingdom';

isSix = cellfun(@(x)isequal(x,country),dataDb);
[row,~] = find(isSix);

dataTe3(:,:) = dataTe2(row(:),:);

writematrix(dataTe3,'lote14341.csv') 


end