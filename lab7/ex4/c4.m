theta = linspace(-pi,pi,1000);
theta_c = 0.7*pi;
L = 14;
fs = 1000;
Ts = 1/fs;
t = 0:Ts:2;
n = t*fs;

n_y = linspace(0,L-1,L);
h1 = [1, -2*cos(0.4*pi), 1];

x1n = 2*cos((2*pi/5)*n+pi/3);
x2n = 5*cos((7*pi/10)*n+pi/2);
x3n = 5*cos((4*pi/5)*n-pi/4);
xn = x1n+x2n+x3n;

vn = conv2(xn, h1, 'same');
h2 = (2/L)*cos(n_y*theta_c);
yn = conv2(vn, h2, 'same');

sound(yn, fs);