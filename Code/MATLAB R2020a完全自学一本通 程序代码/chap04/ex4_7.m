Num = 6;
Mat = magic(4)				%����һ��4��4�ľ���Mat
try
    Mat_Num = Mat(Num,:)		%ȡMat�ĵ�Num��Ԫ��
catch
    Mat_end = Mat(end,:)		%��Matû�е�Num��Ԫ�أ���ȡMat�����һ��Ԫ��
end
lasterr						%��ʾ����ԭ��
