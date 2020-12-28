a = -1.25;
d = 2.5;
i = 5;
c = 0.05;
x = 1.35;

io = i*x ;
a1 = (sqrt(abs(c-d)+((a+c)^2)/sin(2*i))) ;
a2 = power(10, -3); 
a3 = power(2.72, io) ;
a4 = (abs(c - d) + a^2)/((a+c)^2)^(1/3);
y1 = a1 + a2 * a3 - a4
y = (sqrt(abs(c-d)+((a+c)^2)/sin(2*i))) + 10^(-3)*(2.72)^(i*x)- (abs(c-d)+(a^2))/((a+c)^2)^(1/3)

Massive = [a d i c x y]
p = Massive
Massive(find(Massive < 0)) = []

Lenght = length(Massive)
Massive = [ Lenght Massive ]