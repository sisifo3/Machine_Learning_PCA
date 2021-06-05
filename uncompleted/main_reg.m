function[dataDc] = main_reg()

datap= readtable('less_date.csv');
data = datap(:,5);
data = table2array(data);

[r, ~] = find(data(:,1)==0);
j = 1;
value = zeros(100,2);

for i = 1:length(r)
    Mv = r(i);
    %Mv = 14341;
    %disp(Mv)
    %disp(i)
    
    % Descripcion del producto.
    [row,dataD1] = description(Mv,datap);
    cell(:,1) = dataD1(:,1);

    [dataD2] = Quantity_Price(row,datap);
    cell(:,2) = dataD2(:,1);
    cell(:,3) = dataD2(:,2);
    %disp(cell)
    [dataD3] = Country(row,datap);
    cell(:,4) = dataD3(:,1);
    %disp(cell)
    [dataD4] = stock_code(row,datap);
    cell(:,5) = dataD4(:,1);
    %disp(cell)
    [dataD5] =  invoice(row,datap);
    cell(:,6) = dataD5(:,1);
    %disp(cell)
    
    [dataDa] = deleted_country(cell);
    %disp(dataDa)
    
    [dataDb] = deleted_stock_code(dataDa);
    %disp(dataDb)
    
    [dataDc] = deleted_invoice(dataDb);
    %disp(dataDc)

    %disp(cell)
    
    if length(cell) > 3
        value(j,1) = Mv;
        value(j,2) = length(cell);
        j = j+1;
    end
    
    %cell_ans = cell;
    cell = {};
        
end
%disp(value) 
%{

    
    n = length(dataR);
    x0 = data(r(i+10),1);
    [r, ~] = find(dataR(:,2)==0);
    dataR(r(:,1),:) =[];
    x = dataR(:,1);
    y = dataR(:,2);
    x = abs(x);
    y = abs(y);
    [a,b] = linear_regression(x,y,n,x0);
    disp(a)
    disp(b)
    %}
%end



%end