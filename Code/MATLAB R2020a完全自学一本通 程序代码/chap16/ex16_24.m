h = surf(peaks(40)); view(-20,30)			%�ο�ͼ20-27��a��
t = hgtransform;
set(h,'Parent',t)
ry_angle = -15*pi/180; 						%��ת����	
Ry = makehgtform('yrotate',ry_angle); 		%��y����ת����
Tx1 = makehgtform('translate',[-20 0 0]);		%��x��ƽ�ƾ���
Tx2 = makehgtform('translate',[20 0 0]); 		%��x��ƽ�ƾ���
set(t,'Matrix',Tx2*Ry*Tx1) 					%�ο�ͼ20-27��b��
