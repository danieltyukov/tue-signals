%% Fourier coefficients
a_10 = a_k(-10);
a_9 = a_k(-9);
a_8 = a_k(-8);
a_7 = a_k(-7);
a_6 = a_k(-6);
a_5 = a_k(-5);
a_4 = a_k(-4);
a_3 = a_k(-3);
a_2 = a_k(-2);
a_1 = a_k(-1);
a0 = a_k(0);
a1 = a_k(1);
a2 = a_k(2);
a3 = a_k(3);
a4 = a_k(4);
a5 = a_k(5);
a6 = a_k(6);
a7 = a_k(7);
a8 = a_k(8);
a9 = a_k(9);
a10 = a_k(10);

%% Function variables
t = linspace(0, 1, 101);
y = a_k(0);
for n = 1:1:10
    y = y + a_k(n)*exp(1i*2*pi*n.*t) + a_k(-n)*exp(-1i*2*pi*n.*t);
    if n == 2
        y4 = y;
    else if n == 5
        y10 = y;
    else if n == 10
        y20 = y;
    end
    end
    end
end
y0 = a_k(0);

subplot(4, 1, 1); plot(t, y0 + 0*t);
subplot(4, 1, 2); plot(t, y4);
subplot(4, 1, 3); plot(t, y10);
subplot(4, 1, 4); plot(t, y20);

function [a_k] = a_k(k)
if k
    a_k = (1i/(2*pi*k))*3*(-(-1i)^k + (-1)^k);
else
    a_k = -1/4;
end
end