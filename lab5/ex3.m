%% Variable Declaration
q = -0.9;
r = 0.9;
M = 22;

h1 = [1 q];
h2 = zeros(1, M);
for l = 0:M
    h2(l+1) = r^l;
end

%% Signal Processing
xn = 256*(rem(0:100,50)<10);
wn = conv(h1, xn);
yn = conv(h2, wn);

%% Domain Declaration
tx = 0:100;
tw = 0:100+2-1;
ty = 0:100+M+1;

%% Maximum Error Calculation
ErrorMax = max(abs(xn(1+tx)-yn(1+tx))); 

%% Plots
figure;
subplot(211); hold on; plot(tx, xn); plot(tw, wn); hold off; xlim([0 75]); ylim([-400 400]);
subplot(212); hold on; plot(tx, xn); plot(ty, yn); hold off; xlim([0 75]); ylim([-100 300]);