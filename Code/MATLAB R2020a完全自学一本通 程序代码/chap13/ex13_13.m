load facets
%����ԭʼͼ��
subplot(121);image(X);colormap(map);
title('ԭʼͼ��');
axis square
%�������ͼ�����ǿ����
%��С������sym4��X���ж���С���ֽ�
[c,s]=wavedec2(X,2,'sym4');
sizec=size(c);
%�Էֽ�ϵ�����д�����ͻ���������֣�����ϸ�ڲ���
for i=1:size(2)
   if(c(i)>350)
      c(i)=2*c(i);
   else
      c(i)=0.5*c(i);
   end
end
%����Դ�����ϵ�������ع�
xx=waverec2(c,s,'sym4');
%�����ع����ͼ��
subplot(122);image(xx);
colormap(map);
title('��ǿͼ��');
axis square
