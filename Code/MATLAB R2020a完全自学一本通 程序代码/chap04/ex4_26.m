clear all; close all; 
n = 6;						%n=6��������ͼƬΪ����Ļ�
j = sqrt(-1);
phi = 0 : pi/(20*n) : 2*pi;
amp = 0;
for i = 1 : n
    amp = [amp 1/20:1/20:1 19/20:-1/20:0];
end
string = {'base', 'caller', 'self'};		%�ڱ����У��ַ���Ϊ��base��ʱ��
	���û���������
							%�ַ���Ϊ��caller��ʱ�����ú����ռ�
							%�ַ���Ϊ��self��ʱ�������Ӻ����ռ�
for i=1:3
    y = Flower(5, string{i});		%n=5��������ͼƬΪ5��Ļ�
    subplot(1, 3, i)
    plot(y,'r','LineWidth',4)
    axis('square')
end
