clear all
clc
m=rand(4);
dlmwrite('myfile2.txt',m,'delimiter','\t','precision',5)    %ָ����ȷ��
type myfile2.txt
dlmwrite('myfile4.txt',m,'delimiter','\t','precision',3)    %ָ����ȷ��
type myfile4.txt
