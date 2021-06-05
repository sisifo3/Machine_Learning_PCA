function [dataTe3] = clean_Country(dataTe2,country)

dataDb = dataTe2(:,7);
dataDb = table2array(dataDb);
%country = 'United Kingdom';

isSix = cellfun(@(x)isequal(x,country),dataDb);
[row,~] = find(isSix);

dataTe3(:,:) = dataTe2(row(:),:);

end