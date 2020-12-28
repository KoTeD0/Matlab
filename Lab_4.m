s = 'Сидоров Николай 101 521 899';
L0 = s(~isspace(s));
L = length(L0)

sm = regexp(s, ' ', 'split');
s1 = [sm{4} ' ' sm{2} ' ' sm{3} ' ' sm{1}]

s1 = strrep(s1, '0', 'zero');
s1 = strrep(s1, '1', 'one');
s1 = strrep(s1, '2', 'two');
s1 = strrep(s1, '3', 'three');
s1 = strrep(s1, '4', 'four');
s1 = strrep(s1, '5', 'five');
s1 = strrep(s1, '6', 'six');
s1 = strrep(s1, '7', 'seven');
s1 = strrep(s1, '8', 'eight');
s1 = strrep(s1, '9', 'nine');

pros = regexp(s,'[0-9]');
mas = str2num(s(pros));

str1 = 'Сидоров Николай 101 521 899';
str2 = '10 20 40 50 12 19 21 32 44 \n';
str3 = '-1 -2 -3 -4 32 \n';
str4 = '10\n';
f = fopen('sub4.txt','wt+');
fprintf(f,str1);
fprintf(f,str2);
fprintf(f,str3);
fprintf(f,str4);
fclose(f);
f = fopen('sub4.txt','rt+');
str11 = fscanf(f, '%s', [1 4])
str22 = fscanf(f, '%f', [1 5])
str33 = fscanf(f, '%f', [1 5])
str44 = fscanf(f, '%f', [1 5])
fclose(f);

File1NameExp='Lab4';
PictHigh1='200'; %высота рисунка на html-странице

DirName1=['c:\' File1NameExp];
%create new folder for данных
if ~exist(DirName1)
mkdir(DirName1);
end
cd(DirName1);
%открыть html-файл для создания отчета
FileHtml=fopen(['00' File1NameExp 'отчет по Lab_4.htm'],'wt');
%Заголовок html-файла
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе №4\n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type"CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);

fprintf(FileHtml,['<center><H3>ОТЧЕТ по лабораторной работе</h3></center>\n']);
% листинг программы или другая информация
n1=1;
n2=2;
fprintf(FileHtml,['<h3>Исходные данные</h3>\n']);
fprintf(FileHtml,'-5.0f%-5.0f\n',n1,n2);
% листинг программы или другая информация
% создать графическое окно
h1=figure('Name','Модельное изображение (исходное Image0) im3d');
hold on
%выполнить расчеты
x=1:0.01:5;
for beta=-0.5:0.1:0.5
y=sin(3*x);
plot(x,y)
end
hold off
%сохранить построенные графики в файл
FileName000=[File1NameExp 'Grapgh.jpg'];
saveas(h1,FileName000);
% полученный графический файл необходимо разместить на htmlстранице

%создается html-файл
fprintf(FileHtml,['Графики \n']);
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['<img src="' FileName000 '" height="' PictHigh1 '" >' '\n']);
%fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
