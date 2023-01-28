clc;
clear;

% Part a
x_a = [-2,-1,0,1,2];
y_a = 3.^x_a;
approximation_3_a = neville_nhiln(1/2,x_a,y_a);
x_3_a = ['a) The approximation of sqrt(3) is ', num2str(approximation_3_a),' when x = 1/2 ', 'in f(x)= 3^x.'];

disp(x_3_a);


% Part b
x_b = [0,1,2,4,5];
y_b = sqrt(x_b);
approximation_3_b = neville_nhiln(3,x_b,y_b);
x_3_b = ['b) The approximation of sqrt(3) is ', num2str(approximation_3_b),' when x = 3 ', 'in f(x)= sqrt(x).'];

disp(x_3_b);


% Part c
f_exact = sqrt(3);
a_error = abs(f_exact - approximation_3_a);
b_error = abs(f_exact - approximation_3_b);

abs_error = ['c) The absolute error of part a) is ', num2str(a_error), ' and the absolute error of part b) is ', num2str(b_error),'.'];
disp(abs_error);

if b_error < a_error
    disp('Therefore, part b) is more accurate.')
else
    disp('Therefore, part a) is more accurate.')
end

