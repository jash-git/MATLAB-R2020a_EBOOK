figure
subplot(2,2,1)
plot(rand(1,20))
title('grid off')			%�ο�ͼ20-21����ͼ
subplot(2,2,2)
plot(rand(1,20))
grid on
title('grid on') 			%�ο�ͼ20-21����ͼ
subplot(2,2,[3 4])
plot(rand(1,20))
grid(gca,'minor')
title('grid minor') 			%�ο�ͼ20-21��ͼ
