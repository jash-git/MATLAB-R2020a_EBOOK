clc
clear
H = [1 -1; -1 2];
f = [-2; -6];
A = [1 1; -1 2; 2 1];
b = [2; 2; 3];
lb = zeros(2,1);
%���ö��ι滮����
[x,fval,exitflag,output,lambda] = quadprog(H,f,A,b,[],[],lb)
