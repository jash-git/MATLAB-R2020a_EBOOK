%��ʼ��
function pop=initpop(popsize,chromlength)  
pop=round(rand(popsize,chromlength));  
% rand�������ÿ����ԪΪ{0,1}����Ϊpopsize������Ϊchromlength�ľ���
% roud�Ծ����ÿ����Ԫ����Բ�������������ĳ�ʼ��Ⱥ��
end
function pop2=decodebinary(pop)
[px,py]=size(pop); 
%��pop�к�����
for i=1:py
pop1(:,i)=2.^(py-i).*pop(:,i);
end
pop2=sum(pop1,2); 
%��pop1��ÿ��֮�� 
end
%�������Ʊ���ת����ʮ����
function pop2=decodechrom(pop,spoint,length)
pop1=pop(:,spoint:spoint+length-1);
pop2=decodebinary(pop1);
end
function [objvalue]=calobjvalue(pop)
temp1=decodechrom(pop,1,10); 		%��popÿ��ת����ʮ������
x=temp1*10/1023; 				%����ֵ�� �е���ת��Ϊ������ ����
objvalue=10*sin(5*x)+7*cos(4*x); 	%����Ŀ�꺯��ֵ
end
%����������Ӧֵ  
function fitvalue=calfitvalue(objvalue)
global Cmin;
Cmin=0;
[px,py]=size(objvalue);
for i=1:px
    if objvalue(i)+Cmin>0
        temp=Cmin+objvalue(i);
    else
        temp=0.0;
    end
    fitvalue(i)=temp;
end
fitvalue=fitvalue'
%ѡ����  
function [newpop]=selection(pop,fitvalue)
totalfit=sum(fitvalue); 		%����Ӧֵ֮��
fitvalue=fitvalue/totalfit; 	%�������屻ѡ��ĸ���
fitvalue=cumsum(fitvalue); 	%�� fitvalue=[1 2 3 4]���� cumsum(fitvalue)=[1 3 6 10] 
[px,py]=size(pop);
ms=sort(rand(px,1)); 			%��С��������
fitin=1;
newin=1;
while newin<=px
    if(ms(newin))<fitvalue(fitin)
        newpop(newin)=pop(fitin);
        newin=newin+1;
    else
        fitin=fitin+1;
    end
end
%����  
function [newpop]=crossover(pop,pc)
[px,py]=size(pop);
newpop=ones(size(pop));
for i=1:2:px-1
    if(rand<pc)
        cpoint=round(rand*py);
        newpop(i,:)=[pop(i,1:cpoint),pop(i+1,cpoint+1:py)];
        newpop(i+1,:)=[pop(i+1,1:cpoint),pop(i,cpoint+1:py)];
    else
        newpop(i,:)=pop(i);
        newpop(i+1,:)=pop(i+1);
    end
end  
%����  
function [newpop]=mutation(pop,pm)
[px,py]=size(pop);
newpop=ones(size(pop));
for i=1:px
    if(rand<pm)
        mpoint=round(rand*py);
        if mpoint<=0
            mpoint=1;
        end
        newpop(i)=pop(i);
        if any(newpop(i,mpoint))==0
            newpop(i,mpoint)=1;
        else
            newpop(i,mpoint)=0;
        end
    else
        newpop(i)=pop(i);
    end
end
%���Ⱥ������Ӧֵ����ֵ  
function [bestindividual,bestfit]=best(pop,fitvalue)
[px,py]=size(pop);
bestindividual=pop(1,:);
bestfit=fitvalue(1);
for i=2:px
    if fitvalue(i)>bestfit
        bestindividual=pop(i,:);
        bestfit=fitvalue(i);
    end
end
%������
clear all
clc 
popsize=20; 								%Ⱥ���С  
chromlength=10; 							%�ַ������ȣ����峤�ȣ� 
pc=0.7;   								%�������
pm=0.005;                                 		%�������
pop=initpop(popsize,chromlength);    		%���������ʼȺ�� 
for i=1:20                                  		%20Ϊ��������
[objvalue]=calobjvalue(pop);            		%����Ŀ�꺯�� 
fitvalue=calfitvalue(objvalue);         		%����Ⱥ����ÿ���������Ӧ��
[newpop]=selection(pop,fitvalue);      		%���� 
[newpop]=crossover(pop,pc);              		%���� 
[newpop]=mutation(pop,pc);              		%���� 
[bestindividual,bestfit]=best(pop,fitvalue);	%���Ⱥ������Ӧֵ���ĸ��弰����Ӧֵ
y(i)=max(bestfit); 
n(i)=i;  
pop5=bestindividual;  
x(i)=decodechrom(pop5,1,chromlength)*10/1023; 
pop=newpop; 
end  
fplot('9*sin(5*x)+8*cos(4*x)',[0 15])
hold on
plot(x,y,'r*')
hold off
