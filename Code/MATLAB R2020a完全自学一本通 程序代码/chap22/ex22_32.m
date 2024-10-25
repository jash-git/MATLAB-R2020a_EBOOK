fs1 = 10;							% ԭ����Ƶ��
t1 = 0:1/fs1:1;						% ʱ������
x = 0.5*t1;							% ʱ������
y = resample(x,3,2);					% ���²���
t2 = (0:(length(y)-1))*2/(3*fs1);	% �µ�ʱ������
plot(t1,x,'*',t2,y,'o',-0.5:0.01:1.5,-0.25:0.005:0.75,':')
legend('original','resampled'); xlabel('Time')
