clear
clc

% Number 5
fprintf('#5 \n')

% Part a
A5_a = [0.30 0.29552 0.95534; 0.32 0.31457 0.94924; 0.35 0.34290 0.93937];

syms x
Hp5_a = Hermite_NhiNguyen(A5_a);
H5_a = vpa(subs(Hp5_a,x,0.34));
actual_error_5a = abs((round(H5_a,5))-(sin(0.34)));
fprintf('a) The approximation of sin(x) at x = 0.34 is %0.5f \n', H5_a)

% Part b
syms x
f5_5 = sin(x);
g5_a = abs(((x-0.30)^2)*((x-0.32)^2)*((x-0.35)^2));

f5_diff6 = diff(f5_5,6); % find 6th derivative of f
value_f5_diff6 = vpa(subs(f5_diff6,x,0.34)); % plug in 0.34
value_endpoint1_5b = vpa(subs(f5_diff6,x,0.30)); % plug in 1st endpoint
value_endpoint2_5b = vpa(subs(f5_diff6,x,0.35)); % plug in 2nd endpoint
values_5b = [value_f5_diff6, value_endpoint1_5b, value_endpoint2_5b];
max_value_5b = max(abs(values_5b)); % find maximum value

g_value5 = vpa(subs(g5_a,x,0.34)); % find g(0.34)
error_bound_5a = abs(vpa(g_value5*max_value_5b/factorial(6))); % calculate the error bound

fprintf('b) The error bound is %0.2e',error_bound_5a)
fprintf(', and the actual error is %0.2e \n', actual_error_5a)


% Part c
A5_c = [0.30 0.29552 0.95534; 0.32 0.31457 0.94924; 0.33 0.32404 0.94604; 0.35 0.34290 0.93937];

syms x
Hp5_c = Hermite_NhiNguyen(A5_c);
H5_c = vpa(subs(Hp5_c,x,0.34)); 
g5_c = abs(((x-0.30)^2)*((x-0.32)^2)*((x-0.33)^2)*((x-0.35)^2)); % defines our new g, we still use the same f in part a

f5_diff8 = diff(f5_5,8); % find 8th derivative of f
value_f5_diff8 = vpa(subs(f5_diff8,x,0.34)); % plug in 0.34
value_endpoint1_5c = vpa(subs(f5_diff8,x,0.30)); % plug in 1st endpoint
value_endpoint2_5c = vpa(subs(f5_diff8,x,0.35)); % plug in 2nd endpoint
values_5c = [value_f5_diff8, value_endpoint1_5c, value_endpoint2_5c];
max_value_5c = max(abs(values_5c)); % find maximum value

g_value_5c = vpa(subs(g5_c,x,0.34)); % plug 0.34 into g

error_bound_5c = abs(vpa(g_value_5c*max_value_5c/factorial(8))); % calculates the new error bound
actual_error_5c = abs((round(H5_c,5))-sin(0.34));

fprintf('c) The new approximation of sin(x) at x=0.34 is %0.5f', H5_c)
fprintf('; the new error bound is %0.2e',error_bound_5c)
fprintf(', and the new actual error is %0.2e \n',actual_error_5c)


% Number 7
fprintf('#7 \n')

% Hermite 3rd Polynomial
A7_3 = [1 1.105170918 0.2210341836; 1.5 1.252322716 0.375968148];

syms x
Hp7_3 = Hermite_NhiNguyen(A7_3);
H7_3 = vpa(subs(Hp7_3,x,1.25));
actual_error_7_3 = abs(round(H7_3,5)-exp(0.1*(1.25^2)));

syms x
f7 = exp(0.1*x^2);
g7_3 = abs(((x-1)^2)*((x-1.5)^2));

f7_diff4 = diff(f7,4); % find 4th derivative of f
value_f7_diff4 = vpa(subs(f7_diff4,x,1.25)); % plug in 1.25
endpoint1_7_3 = vpa(subs(f7_diff4,x,1.00)); % plug in 1st endpoint
endpoint2_7_3 = vpa(subs(f7_diff4,x,1.50)); % plug in 2nd endpoint
values_7_3 = [value_f7_diff4, endpoint1_7_3, endpoint2_7_3];
max_value_7_3 = max(values_7_3); % find maximum value

g_value7_3 = vpa(subs(g7_3,x,1.25)); % find g(1.25)
error_bound_7_3 = abs(vpa(g_value7_3*abs(max_value_7_3)/factorial(4))); % calculate the error bound

fprintf(' H_3(1.25) is %0.5f',H7_3)
fprintf(' the error bound is %0.2e',error_bound_7_3)
fprintf(', and the actual error is %0.2e \n', actual_error_7_3)


% Hermite 5th Polynomial
A7_5 = [1 1.105170918 0.2210341836; 2 1.491824698 0.5967298792; 3 2.459603111 1.475761867];

syms x
Hp7_5 = Hermite_NhiNguyen(A7_5);
H7_5 = vpa(subs(Hp7_5,x,1.25));
actual_error_7_5 = abs(round(H7_5,5)-exp(0.1*(1.25^2)));

syms x
f7 = exp(0.1*x^2);
g7_5 = abs(((x-1)^2)*((x-2)^2)*((x-3)^2));

f7_diff6 = diff(f7,6); % find 6th derivative of f
value_f7_diff6 = vpa(subs(f7_diff6,x,1.25)); % plug in 1.25
endpoint1_7_5 = vpa(subs(f7_diff6,x,1)); % plug in 1st endpoint
endpoint2_7_5 = vpa(subs(f7_diff6,x,3)); % plug in 2nd endpoint
values_7_5 = [value_f7_diff6, endpoint1_7_5, endpoint2_7_5];
max_value_7_5 = max(values_7_5); % find maximum value

g_value7_5 = vpa(subs(g7_5,x,1.25)); % find g(0.34)
error_bound_7_5 = abs(vpa(g_value7_5*abs(max_value_7_5)/factorial(6))); % calculate the error bound

fprintf(' H_5(1.25) is %0.5f',H7_5)
fprintf(' the error bound is %0.2e',error_bound_7_5)
fprintf(', and the actual error is %0.2e \n', actual_error_7_5)