clc	
clear
f = [1;1;1;1;1;1];
A=[-1 0 0 0 0 -1
   -1 -1 0 0 0 0
   0 -1 -1 0 0 0
   0 0 -1 -1 0 0
   0 0 0 -1 -1 0
   0 0 0 0 -1 -1];
b=[-50;-30;-70;-60;-40;-20];
lb = zeros(6,1);
%Ȼ�����linprog������
[x,fval,exitflag,output,lambda] = linprog(f,A,b,[],[],lb)
Optimization terminated.
