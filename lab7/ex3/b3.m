fs = 1000;
Ts = 1/fs;
t = 0:Ts:2;
n = t*fs;

h1 = [1, -2*cos(0.4*pi), 1];

x1n = 2*cos((2*pi/5)*n+pi/3);
x2n = 5*cos((7*pi/10)*n+pi/2);
x3n = 5*cos((4*pi/5)*n-pi/4);
xn = x1n+x2n+x3n;

vn = conv2(xn, h1, 'same');
soundsc(vn, fs);