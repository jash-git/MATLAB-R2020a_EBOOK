clear all
a=[0 0 0 1;0 0 8 0;4 0 0 0;0 0 0 0];
S=sparse(a); 		%����ϡ�����
whos;
n1=nnz(S)  			%�鿴����Ԫ�صĸ���
n2=nonzeros(S)   	%����Ԫ�ص�ֵ
n3=nzmax(S)      		%�鿴ϡ�����Ĵ洢�ռ�
spy(S)
n4=nnz(S)/prod(size(S))
