Fs = 1000; 									% ����Ƶ��
T = 1/Fs;									% �������
L = 1000;									% �źų���
t = (0:L-1)*T;								% ʱ������
x = 0.7*sin(2*pi*50*t) + sin(2*pi*120*t); 	% �������Һϳ��ź�
y = x + 2*randn(size(t)); 					% ��Ӱ�����
subplot(121);
plot(Fs*t(1:50),y(1:50))
title('ԭʼ�ź�')
xlabel('time (ms)')
NFFT = 2^nextpow2(L); 
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
subplot(122);
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('��ֵ��')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
