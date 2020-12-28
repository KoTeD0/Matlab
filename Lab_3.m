% 1\
e=2,71828;
x=1:0.1:2*pi;
f1= (sin(x)+(e.^x));
subplot(3,1,1)
plot(x,f1)
title('sin(x) + e^x')
f2=sin(x)+(x.^2);
subplot(3,1,2)
plot(x,f2)
title('sin(x) + x.^2')
f3=sin(x) + x;
subplot(3,1,3)
plot(x,f3)
title('sin(x) + x')
figure
plot(x,f1,'*r', x,f2, '*b', x,f3,'*g')
legend('sin(x) + e^x','sin(x)+x.^2','sin(x) + x')

% 2
x1=-2*pi:0.1:2*pi;
y1=((3+sin(2*x1).^2)./(1+cos(x1).^2)).*(x1<=0);
y2= 1 + ((2*x1)./(e.^(x1/2)+x1.^2)).^1/2.*(x1>0);
figure
subplot(2,1,1)
plot(x1,y1+y2)

for i= 1:length(x1)
if x1(i)<=0
y(i)=(3+sin(2*x1(i))^2)/(1+cos(x1(i))^2);
else
y(i)= 1 + ((2*x1)/(e.^(x1/2)+x1.^2))^1/2;
end

end
subplot(2,1,2)
plot(x1,y1 + y2)