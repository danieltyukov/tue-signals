% t: time x(t): value of cosine at point t
function [t, x] = ex2(Amplitude, AngularFrequency, Phase, Duration)
T=2*pi/AngularFrequency;
M = Duration/T;
t = 0:0.01/(32*M+1):Duration;
%t = 0:(2*pi/AngularFrequency)/32:Duration;
x = Amplitude*cos((AngularFrequency*t)+Phase);
plot(t,x)
end

% Amplitude = 10;
% AngularFrequency = 3*pi;
% Phase = -pi/4;
% Duration = 3;