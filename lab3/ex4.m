t = linspace(0, 0.1, 1001);
x = (cos(2*pi*500.*t)).*(5+3*cos(2*pi*10.*t-(pi/3)));
c = cos(2*pi*500*t);
m = 5+3*cos(2*pi*10*t-(pi/3)); %%Also include DC

subplot(3, 1, 1); plot(t, x); ylim([-10,10]);
subplot(3, 1, 2); plot(t, c); ylim([-10,10]);
subplot(3, 1, 3); plot(t, m); ylim([-10,10]);