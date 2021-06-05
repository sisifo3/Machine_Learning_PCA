function[dataTe2] = clean_StockCode(dataTe,sk)

dataDa = dataTe(:,2);
dataDa = table2array(dataDa);

%sk = '22697';

isSix = cellfun(@(x)isequal(x,sk),dataDa);
[row,~] = find(isSix);

%dataD(:,:) = data(row(:),:);
dataTe2 = dataTe(row(:),:);

end