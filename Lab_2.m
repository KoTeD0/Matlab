%1____________________________________________________
v = [ rand()*10 rand()*10 ];
w = [ rand()*10; rand()*10 ];
m = [ rand()*10  rand()*10 ; rand()*10 rand()*10 ];
v = fix(v)
w = fix(w)
m = fix(m)
%2____________________________________________________
m0 = zeros(2)
m1 = ones(2)
mr = [ rand()*10  rand()*10 ; rand()*10 rand()*10 ] ;
mr = fix(mr)
me = eye(2)
%3_________________________________________________
M = w*v + mr*me 
%4
size = size(M)
max = max(M)
min = min(M)
%5
A = [ 0.6934 3.4302 3.2723  ;
    1.6332 1.5901 2.4343  ;
    0.5854 1.4918 2.3426  ;
    1.6579 4.3528 0.3552 ]

B = [ 0.0546 12.2107 8.9556 8.7879;
    4.1119 9.1181 0.5733 5.2615;
    2.7809 13.4954 29.4956 7.2479;
    1.3945 11.7359 3.1786 2.3811;
    1.6579 4.3528 0.3552 1.3945;
    5.794 1.3223 1.567 4.8091;
    6.6318 4.5172 1.8277 3.8735]

C = [ 0.8762 0.7726 0.7582 0.8002 ;
    0.3556 0.6205 0.9317 0.8679 ;
    0.906 0.9906 0.9514 0.9894 ]
%6
B1=[
    0.6934 3.4302 3.2723 ;
    1.6332 1.5901 2.4343 ;
    0.5854 1.4918 2.3426 ;
    1.6579 4.3528 0.3552 ]

%7
 Q = B1*C
 
 
%8

 B1/A
 
 %9
 
 transpose(A)