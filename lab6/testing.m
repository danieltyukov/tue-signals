theta = linspace(-pi, pi, 2001);
freqresponse = freqz(1/4*ones(1,4), 1, theta);
figure;
subplot(211);
plot(theta, abs(freqresponse)); 
xlabel("Normalized radian frequency"); ylabel("Magnitude");

subplot(212); 
plot(theta, angle(freqresponse)); 
xlabel("Normalized radian frequency"); ylabel("Phase");