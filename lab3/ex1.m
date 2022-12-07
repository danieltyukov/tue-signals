t = linspace(0,2,201);
y= 0;
for k = -9:2:9
   a_k = 4/((pi*k)^2);
   y = y+a_k * exp(1j*2*pi*k*t);
end
plot(t,real(y))