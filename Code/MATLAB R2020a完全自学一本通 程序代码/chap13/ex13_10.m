%װ��ͼ��
load detfingr
%������������Ĳ���
init=3718025452;
rand('seed',init);
Xnoise=X+18*(rand(size(X)));
%��ʾԭʼͼ������������ͼ��
colormap(map);
subplot(1,3,1);image(wcodemat(X,192));
title('ԭʼͼ��X')
axis square
subplot(1,3,2);
image(wcodemat(X,192));
title('��������ͼ��Xnoise');
axis square
%��sym5С����ͼ���źŽ��ж���С���ֽ�
[c,s]=wavedec2(X,2,'sym5');
%�������ͼ���ȥ�봦��
%ʹ��ddencmp����������ȥ���Ĭ����ֵ���ر�׼
%ʹ��wdencmp������ʵ��ͼ���ѹ��
[thr,sorh,keepapp]=ddencmp('den','wv',Xnoise);
[Xdenoise,cxc,lxc,perf0,perfl2]=
��wdencmp('gbl',c,s,'sym5',2,thr,sorh,keepapp);
%��ʾȥ����ͼ��
subplot(133);image(Xdenoise);
title('ȥ����ͼ��');
axis square
