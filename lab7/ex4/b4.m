theta = linspace(-pi,pi,501);
L = 1;
theta_c = 0.7*pi;
while L<=100
    n=linspace(0,L-1,L);
    h2M = (2/L)*cos(n*theta_c);
    h2F = freqz(h2M, 1, theta);
    if abs(h2F(456))<0.1
        Lmin = L;
        break
    end
    L = L+1;
end

h2_ML = (2/Lmin)*cos(n*theta_c);
h2_FL = freqz(h2_ML, 1, theta);

plot(theta, abs(h2_FL), xlabel('Theta'), ylabel('Magnitude'));
xlim([-pi, pi]);