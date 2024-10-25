x = (1:128).' + 50*cos((1:128).'*2*pi/40);
X = dct(x); 
% ��С��1%����ϵ�����㣬���ؽ��ź� 
 [XX, ind] = sort(abs(X),1,'descend');
ii = 1;
while (norm([XX(1:ii);zeros(128-ii,1)]) <= 0.999*norm(XX))
ii = ii+1;
end
disp(['ϵ����ռ������99%��ϵ������Ϊ: ',num2str(ii)]); 
XXt = zeros(128,1);
XXt(ind(1:ii)) = X(ind(1:ii));
xt = idct( XXt);
plot(1:128,x,'-.');hold on
plot(1:128, xt);
legend('Original signal','Reconstructed signal', 'location','best');
