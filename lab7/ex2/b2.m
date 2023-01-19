THETAnull = pi*0.4;
theta = linspace(-pi,pi,501);
hn=(2*cos(theta)-2*cos(THETAnull)).*(exp(-1i*theta));

subplot(2,1,1)
plot(theta,abs(hn))
ylabel('Magnitude Response');
xlim([-pi,pi]);

subplot(2,1,2)
plot(theta, angle(hn))
ylabel('Phase Response');
xlim([-pi,pi]);