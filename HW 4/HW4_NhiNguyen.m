clear
clc

% Curve 1
x_values1 = [1 2 5 6 7 8 10 13 17];
f_x1 = [3.0 3.7 3.9 4.2 5.7 6.6 7.1 6.7 4.5];
f_x_prime1 = [1.0 zeros(1,7) -0.67];

curve_1 = transpose(CubicSpline_NhiNguyen(x_values1,f_x1,f_x_prime1));

disp('The clamped cubic splines for Curve 1 is ')
disp(curve_1)


% Curve 2
x_values2 = [17 20 23 24 25 27 27.7];
f_x2 = [4.5 7.0 6.1 5.6 5.8 5.2 4.1];
f_x_prime2 = [3.0 zeros(1,5) -4.0];

curve_2 = transpose(CubicSpline_NhiNguyen(x_values2,f_x2,f_x_prime2));

disp('The clamped cubic splines for Curve 2 is ')
disp(curve_2)


% Curve 3
x_values3 = [27.7 28 29 30];
f_x3 = [4.1 4.3 4.1 3.0];
f_x_prime3 = [0.33 zeros(1,2) -1.5];

curve_3 = transpose(CubicSpline_NhiNguyen(x_values3,f_x3,f_x_prime3));

disp('The clamped cubic splines for Curve 3 is ')
disp(curve_3)