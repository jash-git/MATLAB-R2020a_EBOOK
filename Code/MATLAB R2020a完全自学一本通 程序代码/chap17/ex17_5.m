 str(1)={'��һ��'};
	str(2)={'�ڶ���'};
	str(3)={'������'};
	Hm_list=uicontrol('style','listbox','position',[200 250 80 100],'string',str, 'callback','listbox1_callback');
index_selected=get(Hm_list,'Value');
list=get(Hm_list,'String');
listnum=list{index_selected}
switch listnum
  case '��һ��'
      msgbox('���ǵ�һ���Ի���','��Ϣ','non-modal');
  case '�ڶ���'
      msgbox('���ǵڶ����Ի���','��Ϣ','non-modal');
  case '������'
      msgbox('���ǵ������Ի���','��Ϣ','non-modal');
  otherwise
      msgbox('δѡ��ѡ���ѡ��','��Ϣ','non-modal');
end
