t1 = linspace(0,2.5,251); %% Time domain of y1 as specified in the exercise
t2 = linspace(0,0.25,251); %% Time domain of y2 as in the figure in the pdf-document
t3 = linspace(0,5,1001); %% Time domain of y3 containing exactly 2 periods of this function
y1 = ((3/2)*cos((12*pi*t1)+pi/4))+((4)*cos((4.8*pi*t1)+3*pi/2)); %% Signal specified by the frequency spectrum
y2 = 5*cos((8*pi*t2+pi)); %% Signal specified by the figure
y3 = (((3/2)*cos((12*pi*t3)+pi/4))+((4)*cos((4.8*pi*t3)+3*pi/2)))+(5*cos((8*pi*t3+pi))); %% Summation of y1 and y2

subplot(3,1,1)
plot(t1,real(y1))
subplot(3,1,2)
plot(t2,real(y2))
subplot(3,1,3)
plot(t3,real(y3))