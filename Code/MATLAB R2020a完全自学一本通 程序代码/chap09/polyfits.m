function  [th,err,yi]=polyfits(x,y,N,xi,r)
%x,y:���ݵ�ϵ��
%N ������ʽ��ϵ�ϵͳ
%r  ����Ȩϵ���������

M=length(x);
x=x(:);
y=y(:);

%�жϵ��ú����ĸ�ʽ
if nargin==4
%�����ú����ĸ�ʽΪ��x,y,N,r��
   if length(xi)==M
          r=xi;
          xi=x;
%�����ú����ĸ�ʽΪ(x,y,N,xi)
     else r=1;
     end
%�����ø�ʽΪ(x,y,N)
elseif nargin==3
         xi=x;
         r=1;
end
%���ϵ������
A(:,N+1)=ones(M,1);
for n=N:-1:1
      A(:,n)=A(:,n+1).*x;
end
if length(r)==M
       for m=1:M
            A(m,:)=A(m,:)/r(m);
            y(m)=y(m)/r(m);
       end
end
  %�������ϵ��
th=(A\y)';
ye=polyval(th,x);
err=norm(y-ye)/norm(y);
yi=polyval(th,xi);
