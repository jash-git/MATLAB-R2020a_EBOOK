array = zeros(1,32);
for n = 3:32					%forѭ��������
array (n) = rank(magic(n));
end
array
bar(array)					%����״ͼ������
