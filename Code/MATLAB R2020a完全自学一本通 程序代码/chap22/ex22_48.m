randn('state',0);
noise = randn(50000,1);  
x = filter(1,[1 1/2 1/3 1/4],noise);
x = x(45904:50000);
a= lpc(x,3);
est_x = filter([0 -a(2:end)],1,x);    	% ���Ƶõ����ź�
e = x - est_x;                    			% Ԥ�����
[acs,lags] = xcorr(e,'coeff');   		% Ԥ����������ز���
subplot(121)
plot(1:97,x(4001:4097),1:97,est_x(4001:4097),'--');
title('Original Signal vs. LPC Estimate');
xlabel('Sample Number'); ylabel('Amplitude'); grid;
legend('Original Signal','LPC Estimate')
subplot(122)
plot(lags,acs); 
title('Autocorrelation of the Prediction Error');
xlabel('Lags'); ylabel('Normalized Value'); grid;
