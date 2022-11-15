% Declaration of the domain and of the functions:
% Careful: operators, such as '/' or '^' might need to be transformed to './' or '.^', because x is declared as an array.

x = linspace(0,10,101);
y = (sin(x))./x;
u = 1./(x-1).^2+x;
v = (x.^2+1)./(x.^2-4);
w = (((10-x).^(1/3))-1)./((4-x.^2).^(1/2));

%%%% Turning the functions into graphical plots

%% Plot of the first quadrant
% magenta :
subplot(221)
plot(x,y, 'm:')
xlabel('x')
ylabel('y(x)')
grid
ylim([-0.5,1])

%% Plot of the second quadrant
% blue --
subplot(222)
plot(x,u, 'b--')
xlabel('x')
ylabel('u(x)')
ylim([0,150])

%% Plot of the third quadrant
% red -.
subplot(223)
plot(x,v, 'r-.')
xlabel('x')
ylabel('v(x)')
ylim([-20,20])

%% Plot of the fourth quadrant 
% green -
subplot(224)
plot(real(x),real(w), 'g-')
xlabel('x')
ylabel('w(x)')
grid
ylim([0,2])