n = 0:149;
xn1 = 5*cos(0.13*pi*n) + 22*cos(0.44*pi*n - pi/3);
xn2 = 5*cos(0.13*pi*n);

filterco = [1 -2*cos(0.44*pi) 1];
yn = conv(filterco, xn1);

figure;

subplot(311);
plot(n, xn1); xlim([0 149]);

subplot(312);
plot(n, xn2); xlim([0 149]);

subplot(313);
plot(0:151, yn); xlim([0 151]);