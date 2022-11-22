A = 1;
F = 1;
Ph = 0;
x = linspace(0,3,301); % Domain
y = A*exp(1j*((2*pi*F*x)+Ph)); % Reference Signal BLUE
y1 = A*exp(1j*((2*pi*F*x)+0)); % Reflected Signal, phase 0 CYAN
y2 = A*exp(1j*((2*pi*F*x)+pi/2)); % Reflected Signal, phase π/2
y3 = A*exp(1j*((2*pi*F*x)+pi)); % Reflected Signal, phase π 
y4 = A*exp(1j*((2*pi*F*x)+3*pi/2)); % Reflected Signal, phase 3π/2
%%%%%%%%  ↓Plots↓   %%%%%%%%
subplot(4,1,1)
plot(x,real(y),'color',[0 0 1])
hold on
plot(x,real(y1),'color',[0 1 1])
hold on
add1 = y+y1;
plot(x,real(add1),'color',[1 0 0])
hold off
grid on
subplot(4,1,2)
plot(x,real(y),'color',[0 0 1])
hold on
plot(x,real(y2),'color',[0 1 1])
hold on
add2 = y+y2;
plot(x,real(add2),'color',[1 0 0])
hold off
grid on
subplot(4,1,3)
plot(x,real(y),'color',[0 0 1])
hold on
plot(x,real(y3),'color',[0 1 1])
hold on
add3 = y+y3;
plot(x,real(add3),'color',[1 0 0])
hold off
grid on
subplot(4,1,4)
plot(x,real(y),'color',[0 0 1])
hold on
plot(x,real(y4),'color',[0 1 1])
hold on
add4 = y+y4;
plot(x,real(add4),'color',[1 0 0])
hold off
grid on

%% Per subplot: 1. reference, 2. reflected, 3. addition%%
%% In this order!!! %%%%