function[]= found_group()

datap= readtable('less_date.csv');
data = datap(:,5);
data = table2array(data);

[r, ~] = find(data(:,1)==0);
j = 1;
value = zeros(100,2);

for i = 1:1
    Mv = r(i);
    %Mv = 14341;
    %disp(Mv)
    disp(i)
    
     % Descripcion del producto.
    [row,dataD1] = description(Mv,datap);
    cell(:,1) = dataD1(:,1);
   
    if length(cell) > 3
        value(j,1) = Mv;
        value(j,2) = length(cell);
        j = j+1;
    end
    
    cell_ans = cell;
    cell = {};
        
end
disp(value) 
end




end