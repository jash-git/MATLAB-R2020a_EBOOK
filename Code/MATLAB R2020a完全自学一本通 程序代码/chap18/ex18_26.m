clear all
fid=fopen('t.m','r');  %���ļ�
data=fread(fid,4)    %���ļ�
data=fread(fid,[3,2])
