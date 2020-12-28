0.
a = rand()*10;
b = rand()*10;
%1.
v = [rand()*10 rand()*10];
v = fix(v)
w = [rand()*10 rand()*10];
w = fix(w)
m = [1 2; 3 4]
%2.
m0 = zeros(2)
m1 = ones(2)
mr = rand(2)
me = eye(2)
%3.
M = m*mr+me
%4.
sizeM = size(M)
maxM = max(M)
minM = min(M)
sumM = sum(M)
powerM = prod(M)
%5.
mA = [0.0081 7.6399 1.3506;
1.0536 22.3808 0.0565;
1.3466 304.4029 24.9269]
mB1 = [ 0.0007 3.4331 0.0017;
1.3466 304.4029 24.9269;
1.9071 0.0532 3.9344 ]
mC = [ 0.8762 0.7726 0.7582;
0.8002 0.7962 0.3556;
0.6205 0.9317 0.8679 ]

mB1*mC
mB1.*mC

mB1/mA
mB1./mA

transA = transpose(mA)
