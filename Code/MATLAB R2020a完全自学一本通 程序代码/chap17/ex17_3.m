function edit1_Callback(hObject, eventdata, handles)
% hObject :edit1����ľ�����μ�gcbo�÷���
% eventdata:Ϊ�˼���MATLAB�����汾�ı����ӿ�
% handles:ӵ�о����ȫ�ֱ������������������û����ݣ��μ� GUIDATA��
% get(hObject,'String')������edit1���������Ϊ�ı���ʽ
% str2double(get(hObject,'String'))����edit1���������ת��Ϊ˫������
%���ַ�������ʽ���洢�����ı���1�����ݡ�����ַ����������֣�����ʾ�հ�����
input = str2num(get(hObject,'String')); 
%��������Ƿ�Ϊ�ա����Ϊ�գ���Ĭ����ʾΪ0
if (isempty(input))     
set(hObject,'String','0')
end
guidata(hObject, handles);
% --- pushbutton1��������ִ�е�������
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject:pushbutton1����ľ�����μ�gcbo�÷���
% eventdata:Ϊ�˼���MATLAB�����汾�ı����ӿ�
% handles:ӵ�о����ȫ�ֱ������������������û����ݣ��μ� GUIDATA��
a = get(handles.edit1,'String');
b = get(handles.edit2,'String');
% a �� b ���ַ������ͣ���Ҫת��Ϊ�������͵ı����������
total = str2num(a) + str2num(b);
c = num2str(total);
% ��Ҫ��������ת�����ַ�������Ȼ�������ʾ
set(handles.text8,'String',c);
guidata(hObject, handles);
