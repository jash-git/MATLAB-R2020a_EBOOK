clear all
n=1:200;
y=n./(3*n+1);
figure;
plot(n,y); %��ʾ����
syms x;
f=x/(3*x+1);
z=limit(f,x,inf)
