A=[1 3;4 5];
fid=fopen('a.txt','w')
count=fwrite(fid,A,'int32') %write data
closestatus=fclose(fid)
 fid=fopen('a.txt','r');       %�ٴδ��ļ�
data=(fread(fid,[2,2],'int32'))
