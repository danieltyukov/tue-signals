theta = linspace(-pi, pi, 501);
theta_c = 0.7*pi;

L1 = 10;
L2 = 20;
L4 = 40;

n1 = linspace(0, L1-1, L1);
n2 = linspace(0, L2-1, L2);
n4 = linspace(0, L4-1, L4);

H2_N1 = (2/L1)*cos(n1*theta_c);
H2_N2 = (2/L2)*cos(n2*theta_c);
H2_N4 = (2/L4)*cos(n4*theta_c);

H2_1 = freqz(H2_N1, 1, theta);
HH_10 = abs(H2_1);
H2_2 = freqz(H2_N2, 1, theta);
HH_20 = abs(H2_2);
H2_4 = freqz(H2_N4, 1, theta);
HH_40 = abs(H2_4);

trig1a = find((abs(H2_1)/max(H2_1)) > (1/sqrt(2)));
trig1b = min(trig1a(trig1a > 100));
trig1c = max(trig1a(trig1a > 100));
Wpb_L10 = theta(trig1c) - theta(trig1b);

trig2a = find((abs(H2_2)/max(H2_2)) > (1/sqrt(2)));
trig2b = min(trig2a(trig2a > 100));
trig2c = max(trig2a(trig2a > 100));
Wpb_L20 = theta(trig2c) - theta(trig2b);

trig4a = find((abs(H2_4)/max(H2_4)) > (1/sqrt(2)));
trig4b = min(trig4a(trig4a > 100));
trig4c = max(trig4a(trig4a > 100));
Wpb_L40 = theta(trig4c) - theta(trig4b);

plot(theta, HH_10, 'b');
hold on;
plot(theta, HH_20, 'r');
hold on;
plot(theta, HH_40, 'g');
xlim([-pi, pi]);
hold on;
legend('L=10', 'L=20', 'L=40');
ylabel("Magnitude");
xlabel("Theta");