%Вариант №5
%Задание 1
pic = ones(800); %пустое изображение 800х800
%Задание 2
J=imnoise(pic,'gaussian');%Гаусов шум
%Задание 3
shsh = figure('visible','off');
SHUM = histogram(J); %гистограмма
dir = ['C:\Users\KAKUSIK\Documents\MATLAB'];
if ~exist(dir)
mkdir(dir);
end
cd(dir);
saveas(SHUM, '3)гистограмма', 'png');
cd('../');
close(shsh)
%Задание 4
which imnoise
One = im2double(imread('1.png'));
midFig = merge(One, J, 365, 386);
cd(dir);
imwrite(midFig, '4.png');
cd('../');
% %Задание 5
% bigOne = imresize(One, 2); %Билинейный
% centrfiguri = merge(bigOne, J, 400, 400);
% cd(dir);
% if ~exist('(punkt5)')
% mkdir('(punkt5)');
% end
% cd('(punkt5)');
% imwrite(centrfiguri, 'Big2Middle.png'); %Сохранить билинейный
% cd('../');
% cd('../');
% CubeOne = imresize3(One, 3, 'cubic'); %Кубический
% centrfiguri = merge(CubeOne, J, 400, 400);
% cd(dir);
% cd('(punkt5)');
% imwrite(centrfiguri, 'Cube3Middle.png'); %Сохранить кубический
% cd('../');
% cd('../');
% NeighOne = imresize3(One, 0.5, 'nearest'); %Ближайший сосед
% centrfiguri = merge(NeighOne, J, 400, 400);
% cd(dir);
% cd('(punkt5)');
% imwrite(centrfiguri, 'Neighbor0.5Middle.png'); %Сохранить ближайшего соседа
% cd('../');
% cd('../');
% %Задание 6
% Exponenta = noise(pic./2, 'exponential', 800, 800);
% tri = im2double(imread('2.png'));
% cir = im2double(imread('3.png'));
% tri = imresize3(tri, 2, 'nearest'); %настройка масштаба
% cir = imresize3(cir, 2, 'nearest'); %настройка масштаба
% Exponenta = merge(tri, Exponenta, 5, 5); %2 в левом верхнем углу
% Exponenta = merge(cir, Exponenta, 690, 690); %3 в правом нижнем углу
% cd(dir);
% imwrite(Exponenta, '6)объекты на шуме.png');
% cd('../');
% %Задание 7
% cd(dir);
% imwrite(flip(Exponenta,2), '7)объекты на шуме зеркально горизонтально.png');
% cd('../');
% %Задание 8
% cd(dir);
% imwrite(flip(Exponenta), '8)объекты на шуме зеркально вертикально.png');
% cd('../');
% %Задание 9
% cd(dir);
% imwrite(imrotate(Exponenta, 315), '9)поворот на 45 градусов по часовой.png');
% cd('../');
% %Задание 10
% cd(dir);
% imwrite(imrotate(Exponenta, 45), '10)поворот на 45 градусов против часовой.png');
% cd('../');
% %Задание 11
% ground = imread('back.png'); %выбор фона
% %Задание 12
% cd(dir);
% imwrite(imcrop(ground, [500 100 799 799]), '12)фон.png'); %фон 800х800
% cd('../');
% %Задание 13
% cd(dir);
% imwrite(imcrop(ground, [500 100 799 799])*0.25, '13)0,25 яркости.png'); %уменьшение яркости в 4 раза
% cd('../');
% %Задание 14
% Firewatch = imcrop(ground, [500 100 799 799])*0.25;
% Firewatch = rgb2gray(Firewatch);
% Firewatch = im2double(Firewatch);
% Firewatch = merge(tri, Firewatch, 5, 5);
% Firewatch = merge(cir, Firewatch, 690, 690);
% risunok1 = noise(Firewatch, 'lognormal', 800, 800);
% cd(dir);
% imwrite(risunok1, '14)месиво.png'); %напихали всего, что прошли до этого
% cd('../');
% %Задание 15
% Safe = risunok1;
% for i = 1:size(Safe,1)
% for j = 1:size(Safe,2)
% Safe(i,j) = 1-Safe(i,j);
% end
% end
% cd(dir);
% imwrite(Safe, '15)негатив.png'); %в негативе
% cd('../');
% %Задание 16
% Firewatch = imcrop(ground, [330 90 799 799])*0.87;
% Firewatch = rgb2gray(Firewatch);
% Firewatch = im2double(Firewatch);
% Firewatch = merge(One, Firewatch, 250, 450);
% risunok2 = noise(Firewatch, 'lognormal', 800, 800);
% cd(dir);
% imwrite(risunok2, '16)месиво поменьше.png'); % напихали поменьше
% cd('../');
% %Задание 17
% cd(dir);
% imwrite(risunok2-risunok1, '17)разность рисунков.png'); %из 16го рисунка вычли 14й
% cd('../');