Array = 1:5;
String = '[Array*2; Array/2; 2.^Array]';
Outpute = eval(String)					%ʹ��eval�������б��ʽ
Outputf = feval(String)					%ʹ��feval�������б��ʽ
