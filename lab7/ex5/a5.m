fs = 2500;
Ts = 1/fs;
t = 0:Ts:2;

yt_800 = 5*cos(2*pi*280*t+pi/2);
yt_1000 = 5*cos(2*pi*350*t+pi/2);
yt_1200 = 5*cos(2*pi*420*t+pi/2);

soundsc(yt_800, fs);
pause(2);
soundsc(yt_1000, fs);
pause(2);
soundsc(yt_1200, fs);