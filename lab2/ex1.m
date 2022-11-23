z1 = 2+3j;
z2 = -1+2j;
z3 = z1+z2;
z4 = 3/2*exp(1j*pi/6);
z5 = 2*exp(1j*pi/3);
z6 = z4*z5;
abs_z4 = abs(z4)
abs_z5 = abs(z5)
abs_z6 = abs(z6)
ang_z4 = angle(z4)
ang_z5 = angle(z5)
ang_z6 = angle(z6)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%↓ Do not change ↓%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all;
hold on;
plot([z1; z2; z3], 'o');
axis([-2 3 -1 6])
quiver(0, 0, real(z1), imag(z1), 0, 'Color', [0 0 1]);
quiver(0, 0, real(z2), imag(z2), 0, 'Color', [0 0 1]);
quiver(0, 0, real(z3), imag(z3), 0, 'Color', [1 0 0]);

figure 
hold on;
axis equal;
plot([z4; z5; z6], 'o');
rectangle('Position',[-1 -1 2 2], 'Curvature', 1, 'EdgeColor', 'k');
quiver(0, 0, real(z4), imag(z4), 0, 'Color', [0 0 1]);
quiver(0, 0, real(z5), imag(z5), 0, 'Color', [0 0 1]);
quiver(0, 0, real(z6), imag(z6), 0, 'Color', [1 0 0]);
