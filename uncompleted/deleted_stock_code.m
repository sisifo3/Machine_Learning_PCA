function[dataD] = deleted_stock_code(data)
sk = '22697';

isSix = cellfun(@(x)isequal(x,sk),data);
[row,~] = find(isSix);

dataD(:,:) = data(row(:),:);




end