function[dataD] = deleted_country(data)
country = 'United Kingdom';

isSix = cellfun(@(x)isequal(x,country),data);
[row,~] = find(isSix);

dataD(:,:) = data(row(:),:);
end