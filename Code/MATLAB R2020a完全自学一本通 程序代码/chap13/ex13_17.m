load woman
%ʹ��db1С����ͼ��������㾲̬С���ֽ�
[swa,swh,swv,swd]=swt2(X,3,'db1');
whos
colormap(map)
kp=0;
for i=1:3
subplot(3,4,kp+1),image(wcodemat(swa(:,:,i),192));
%��ʾ��i�����ϵ��ͼ��
title(['Approx,cfs,level',num2str(i)])
subplot(3,4,kp+2),image(wcodemat(swh(:,:,i),192));
title(['Horiz.Det.cfs level',num2str(i)])
subplot(3,4,kp+3),image(wcodemat(swv(:,:,i),192));
title(['Vert.Det.cfs level',num2str(i)])
subplot(3,4,kp+4),image(wcodemat(swd(:,:,i),192));
title(['Diag.Det.cfs level',num2str(i)])
kp=kp+4;
end
