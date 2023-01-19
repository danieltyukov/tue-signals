%sampling rate and time define
fs = 1000;
Ts = 1/fs;
t = 0:Ts:0.01;
n =t*fs;

%fs1 = 2500;
%Ts1 = 1/fs1;
%t1=0:Ts1:0.01;
Ts1 = 0.0001;
t1=0:Ts1:0.01;

x1n = 2*cos((2*pi/5)*n+pi/3);
x2n = 5*cos((7*pi/10)*n+pi/2);
x3n = 5*cos((4*pi/5)*n-pi/4);
xn = x1n+x2n+x3n;

x1 = 2*cos(2*pi*200*t1+pi/3);
x2 = 5*cos(2*pi*350*t1+pi/2);
x3 = 5*cos(2*pi*600*t1+pi/4);
xt = x1+x2+x3;

stem(n*Ts,xn,'r')
hold on;
plot(t1,xt,'b')
ylabel('x[n] and x(t)');
xlabel('n*Ts and t');
legend('x[n]','x(t)')