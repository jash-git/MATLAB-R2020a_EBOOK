clear all
A=[1 2 3;3 4 5;7 8 9];
B=magic(5);
r1=trace(A);					%����ļ�
r2=trace(B);
disp(['A�ļ�=',num2str(r1)]);
disp(['B�ļ�=',num2str(r2)]);
