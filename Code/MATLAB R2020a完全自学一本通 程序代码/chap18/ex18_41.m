clear all
clc
a=[1:10];%��������
fid=fopen('six.bin','w');
fwrite(fid,a,'short');%д���ļ�
status=fclose(fid);%�ر��ļ�
fid=fopen('six.bin','r');
six=fread(fid,'short');%��ȡ�ļ�
eof=feof(fid);%�жϲ���ָ���Ƿ����ļ�����λ��
frewind(fid);%��ָ�뷵�ص��ļ���ʼ
status=fseek(fid,3,0);%�趨ָ��λ��
position=ftell(fid);%�ڷ������ڵ�λ��ָ��
six' 
eof 
status 
position
