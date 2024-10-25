x = 0:15;
y = [1.5*cos(x);4*exp(-.1*x).*cos(x);exp(.05*x).*cos(x)]';
h = stem(x,y);
axis([0 16 -4 4])%�ο�ͼ20-5��a��
set(h(1),'Color','black',...
            'Marker','o',...
            'Tag','Decaying Exponential')
set(h(2),'Color','black',...
            'Marker','square',...
            'Tag','Growing Exponential')% �ο�ͼ20-5��b��
set(h(3),'Color','black',...
            'Marker','*',...
            'Tag','Steady State')% �ο�ͼ20-5��c��
set(findobj(gca,'-depth',1,'Type','line'),'LineStyle','--')
h = findobj('-regexp','Tag','^(?!Steady State$).');
set(h,{'MarkerSize'},num2cell(cell2mat(get(h,'MarkerSize'))+2))
h = findobj('type','line','Marker','none',...
   '-and','-not','LineStyle','--');
set(h,'Color','red')% �ο�ͼ20-5��d��
