%һά���ٸ���Ҷ��ֵʵ������������
clear all;
x = 0:1.2:10;
y = sin(x);
n = 2*length(x);		%������1 ��
yi = interpft(y,n);	%һά���ٸ���Ҷ��ֵ
xi = 0:0.6:10.4;
hold on;
plot(x,y,'ro');		%��ͼ
plot(xi,yi,'b.-');
title('һά���ٸ���Ҷ��ֵ');
legend('ԭʼ����','��ֵ���');
