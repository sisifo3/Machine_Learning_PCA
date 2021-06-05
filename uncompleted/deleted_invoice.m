function [dataD] = deleted_invoice(data)
inv = '537534';

isSix = cellfun(@(x)isequal(x,inv),data);
[row,~] = find(isSix);

dataD(:,:) = data(row(:),:);



end