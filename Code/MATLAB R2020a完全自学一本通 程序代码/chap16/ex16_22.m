t = 0:pi/20:2*pi;
y = exp(sin(t));
h = plot(t,y,'YDataSource','y');	%�ο�ͼ20-25��a��
for k = 1:2
 y = exp(sin(t.*k));
 refreshdata(h,'caller') 		%���¼���y
 drawnow; pause(.1)
end								%�ο�ͼ20-25��b��
