%% Time domains
t1 = linspace(0,0.4,201);
t2 = linspace(0,0.4,1001);
tn = 0:0.05:0.4;

%% (sampled) Signals
x1 = 2*cos(2*pi*5.*t1+pi/3);
x2 = 2*cos(2*pi*25.*t2+pi/3);
xn1 = zeros(1,9);
xn2 = zeros(1,9);

n=0;
for t = tn
    n = n+1;
    xn1(n) = 2*cos(2*pi*5.*t+pi/3);
    xn2(n) = 2*cos(2*pi*25.*t+pi/3);
end

%% Plots (NOTE: Use the stem(X, Y) function!)
subplot(2,1,1);
hold on
plot(t1,x1)
stem(tn,xn1)

subplot(2,1,2);
hold on
plot(t2,x2)
stem(tn,xn2)