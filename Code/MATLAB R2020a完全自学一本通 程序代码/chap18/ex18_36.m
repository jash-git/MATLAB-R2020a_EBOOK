clear all
clc
M = magic(3);
dlmwrite('myfile5.txt', [M*5 M/5], ' ')
type myfile5.txt	%���myfile5.txt���е�һ�ι۲�
dlmwrite('myfile5.txt', rand(3), '-append', 'roffset', 1, 'delimiter', ' ')
type myfile5.txt	%���myfile5.txt���еڶ��ι۲�
