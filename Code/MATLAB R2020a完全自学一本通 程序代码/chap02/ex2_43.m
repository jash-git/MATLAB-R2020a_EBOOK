clear all
%����һ������ʵ���͸����ľ���
A=[2 6.5 3i 3.5 6 4+2i];
%����洢ʵ���͸����ľ���ĿǰΪ�վ���
real_array=[];
complex_array=[];
for i=1:length(A),
	%�жϾ���Ԫ���Ƿ�Ϊʵ��
	if isreal(A(i))==1,
		real_array=[real_array A(i)];
		else
		complex_array=[complex_array A(i)];
		end;
end;
%���ʵ��Ԫ��
real_array
%�������Ԫ��
complex_array
