function f = ex12_12(x)
f = -x(1) * x(2) * x(3);


x0 = [10; 10; 10];    % ��ֵ
A = [-1 -2 -2; ...
1  2  2];
b = [0;72];
[x,fval] = fmincon(@x10_12,x0,A,b)
