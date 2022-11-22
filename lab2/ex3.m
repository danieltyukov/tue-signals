A = 1;
F = 1;
Ph = 0;

t = linspace(0,2,201);
y = A*exp(1j*((2*pi*F*t)+Ph));

plot(t,real(y),'color',[0 0 1])
hold on
plot(t,imag(y),'color',[1 0 0])
hold off