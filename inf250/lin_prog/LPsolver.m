clear all
close all

% cats are added together for a total of 6000
item_names = [{'A Caillebotte picture'}, {'A bust of Diocletian'} ...
                {'A Yuan dinasty chinese vase'} {'A 911 Porsche'} ...
                {'Blood diamond'} {'Blood diamond'} {'Blood diamond'} ...
                {'A Louis XV sofa'} {'2x very fluffy rare breed cat'} ...
                {'A sculpture dated 200 A.D'} {'A sailing boat'} ...
                {'A Harley Davidson motorbike'} {'A piece of furniture that once belonged to Newton'}];
            
item_values = [25000 5000 20000 40000 12000 12000 12000 3000 6000 10000 15000 10000 13000];

n = length(item_values);

integer_constraints = 1:n;

A = -item_values;
b = -sum(item_values)/2;
Aeq = zeros(1,n);
Aeq(1) = 1;
Aeq(2) = 1;
beq = 2;

lb = zeros(1,n);
ub = ones(1,n);

[x , s] = intlinprog(item_values,integer_constraints,A,b,Aeq,beq,lb,ub);

partition_1 = '';
partition_2 = '';

for i=1:length(x)
    if x(i) == 1
        partition_1 = strcat(partition_1, cell2mat(item_names(i)), ", ");
    else
        partition_2 = strcat(partition_2, cell2mat(item_names(i)), ", ");
    end
end

fprintf("First son gets %sfor a total sum of %.f\n", partition_1, s);
fprintf("Second son gets %sfor a total sum of %.f\n", partition_2, (sum(item_values) - s));