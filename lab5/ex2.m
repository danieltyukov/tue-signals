load('lab5data.mat');

%% Define Transfer Functions
h1 = 1/2*ones(1,2); % 2-point avg
h2 = 1/5*ones(1,5); % 5-point avg

%% Output signal
y1 = conv(h1, x1); % 2-point avg
y2 = conv(h2, x1); % 5-point avg

%% n-domains
n = 0:99; % n domain input signal
n1 = 0:99+2-1;% n domain 2-point avg output signal
n2 = 0:99+5-1;% n domain 2-point avg output signal

%% Plot Section
figure;
subplot(311); hold on; plot(n, x1); hold off; xlim([0 99])
subplot(312); hold on; plot(n, x1); plot(n1, y1); hold off; xlim([0 100])
subplot(313); hold on; plot(n, x1); plot(n2, y2); hold off; xlim([0 104])