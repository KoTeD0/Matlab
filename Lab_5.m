%������� �5
%������� 1
pic = ones(800); %������ ����������� 800�800
%������� 2
J=imnoise(pic,'gaussian');%������ ���
%������� 3
shsh = figure('visible','off');
SHUM = histogram(J); %�����������
dir = ['C:\Users\KAKUSIK\Documents\MATLAB'];
if ~exist(dir)
mkdir(dir);
end
cd(dir);
saveas(SHUM, '3)�����������', 'png');
cd('../');
close(shsh)
%������� 4
which imnoise
One = im2double(imread('1.png'));
midFig = merge(One, J, 365, 386);
cd(dir);
imwrite(midFig, '4.png');
cd('../');
% %������� 5
% bigOne = imresize(One, 2); %����������
% centrfiguri = merge(bigOne, J, 400, 400);
% cd(dir);
% if ~exist('(punkt5)')
% mkdir('(punkt5)');
% end
% cd('(punkt5)');
% imwrite(centrfiguri, 'Big2Middle.png'); %��������� ����������
% cd('../');
% cd('../');
% CubeOne = imresize3(One, 3, 'cubic'); %����������
% centrfiguri = merge(CubeOne, J, 400, 400);
% cd(dir);
% cd('(punkt5)');
% imwrite(centrfiguri, 'Cube3Middle.png'); %��������� ����������
% cd('../');
% cd('../');
% NeighOne = imresize3(One, 0.5, 'nearest'); %��������� �����
% centrfiguri = merge(NeighOne, J, 400, 400);
% cd(dir);
% cd('(punkt5)');
% imwrite(centrfiguri, 'Neighbor0.5Middle.png'); %��������� ���������� ������
% cd('../');
% cd('../');
% %������� 6
% Exponenta = noise(pic./2, 'exponential', 800, 800);
% tri = im2double(imread('2.png'));
% cir = im2double(imread('3.png'));
% tri = imresize3(tri, 2, 'nearest'); %��������� ��������
% cir = imresize3(cir, 2, 'nearest'); %��������� ��������
% Exponenta = merge(tri, Exponenta, 5, 5); %2 � ����� ������� ����
% Exponenta = merge(cir, Exponenta, 690, 690); %3 � ������ ������ ����
% cd(dir);
% imwrite(Exponenta, '6)������� �� ����.png');
% cd('../');
% %������� 7
% cd(dir);
% imwrite(flip(Exponenta,2), '7)������� �� ���� ��������� �������������.png');
% cd('../');
% %������� 8
% cd(dir);
% imwrite(flip(Exponenta), '8)������� �� ���� ��������� �����������.png');
% cd('../');
% %������� 9
% cd(dir);
% imwrite(imrotate(Exponenta, 315), '9)������� �� 45 �������� �� �������.png');
% cd('../');
% %������� 10
% cd(dir);
% imwrite(imrotate(Exponenta, 45), '10)������� �� 45 �������� ������ �������.png');
% cd('../');
% %������� 11
% ground = imread('back.png'); %����� ����
% %������� 12
% cd(dir);
% imwrite(imcrop(ground, [500 100 799 799]), '12)���.png'); %��� 800�800
% cd('../');
% %������� 13
% cd(dir);
% imwrite(imcrop(ground, [500 100 799 799])*0.25, '13)0,25 �������.png'); %���������� ������� � 4 ����
% cd('../');
% %������� 14
% Firewatch = imcrop(ground, [500 100 799 799])*0.25;
% Firewatch = rgb2gray(Firewatch);
% Firewatch = im2double(Firewatch);
% Firewatch = merge(tri, Firewatch, 5, 5);
% Firewatch = merge(cir, Firewatch, 690, 690);
% risunok1 = noise(Firewatch, 'lognormal', 800, 800);
% cd(dir);
% imwrite(risunok1, '14)������.png'); %�������� �����, ��� ������ �� �����
% cd('../');
% %������� 15
% Safe = risunok1;
% for i = 1:size(Safe,1)
% for j = 1:size(Safe,2)
% Safe(i,j) = 1-Safe(i,j);
% end
% end
% cd(dir);
% imwrite(Safe, '15)�������.png'); %� ��������
% cd('../');
% %������� 16
% Firewatch = imcrop(ground, [330 90 799 799])*0.87;
% Firewatch = rgb2gray(Firewatch);
% Firewatch = im2double(Firewatch);
% Firewatch = merge(One, Firewatch, 250, 450);
% risunok2 = noise(Firewatch, 'lognormal', 800, 800);
% cd(dir);
% imwrite(risunok2, '16)������ ��������.png'); % �������� ��������
% cd('../');
% %������� 17
% cd(dir);
% imwrite(risunok2-risunok1, '17)�������� ��������.png'); %�� 16�� ������� ����� 14�
% cd('../');