clear all
a=[1 2 3;3 4 5;7 8 9];
b=norm(a,1);  			%�����1�׷�ʽ
c=norm(a) ;    			%�����2�׷�ʽ
d=norm(a,inf) ; 			%��������ʽ
e=norm(a,'fro');  		%�����Frobenius��ʽ
f=normest(a);  			%�����2�׷�ʽ�Ĺ���ֵ
bcdef=[ b c d e f ]
