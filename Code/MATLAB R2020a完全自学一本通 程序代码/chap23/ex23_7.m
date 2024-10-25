clear all
clc
% ����ѵ���������� 
% P Ϊ������� 
P = [-1:0.05:1]; 
% T ΪĿ����� 
%randn('seed',78341223); 
T = sin(2*pi*P)+0.1*randn(size(P)); 
%�����������ݵ�
figure(1)
plot(P,T,'+'); 
title('�����������ݵ�');
xlabel('�������');
ylabel('Ŀ�����'); 
hold on; 
%  ���Ʋ�����������������
figure(2)
plot(P,sin(2*pi*P),':');     
title('���Ʋ������������ݵ�');
xlabel('�������');
ylabel('�������������ݵ�'); 
hold on
%  ����һ���µ�ǰ�������� 
net=newff(minmax(P),[20,1],{'tansig','purelin'}); 
%  ���� L-M �Ż��㷨 TRAINLM 
net.trainFcn='trainlm';            
%  ����ѵ������         
net.trainParam.epochs = 200;         
net.trainParam.goal = 1e-6;  
% ���³�ʼ��  
net=init(net);               
%  ������Ӧ�㷨ѵ�� BP ���� 
[net,tr]=train(net,P,T); 
%  �� BP ������з��� 
A = sim(net,P); 
%  ���������� 
E = T - A; 
MSE=mse(E) 
%  ����ƥ�������� 
figure(3)
plot(P,A,P,T,'+'); 
title('�������Ƚ�');
xlabel('�������');
ylabel('��������Ŀ�����'); 
hold on
MSE