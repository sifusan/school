%
%
clear

a = xlsread('2017-02-20--PeopleData-for-INF250.xlsx');
ID = a(:,1);
Age = a(:, 2);
Height = a(:, 3);
Weight = a(:, 4);
Shoesize = a(:,5);
Male = a(:,6);


%AG
% Let's import the peoples' data 
% from ../2017-02-20--PeopleData-for-INF250.xlsx: 
%
% This should lead to the following data columns: 
% -- Age (128 entries)
% -- Height (128)
% -- Weight (128)
% -- Shoesize (128)
% -- Male (128)
% -- ID (128)
%
%
