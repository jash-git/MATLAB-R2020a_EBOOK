RGB = imread('peppers.png');
[X1,map1] = rgb2ind(RGB, 0.1);
[X2,map2] = rgb2ind(RGB,185);
subplot(131);imshow(RGB);title('ԭʼͼ��')
subplot(132);imshow(X1,map1); title('һ������')
subplot(133);imshow(X1,map2); title('��С��������')
