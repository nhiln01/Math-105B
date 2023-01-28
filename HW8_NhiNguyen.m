clear
clc
%% 8.3 Problem 5

% Part a
t_a = [-sqrt(3)/2; 0; sqrt(3)/2];   
a_a = 1;
b_a = 3;
x_a = (t_a*(b_a-a_a)+a_a+b_a)/2; % transform t to x
x_a = sort(x_a);
f1_a = @(x) 1./x; 

A_a = f1_a(x_a(3));
B_a = 1/t_a(3)*(f1_a(x_a(3))-f1_a(x_a(2)));
C_a = 1/(2*(t_a(3))^2)*(f1_a(x_a(3))-2*f1_a(x_a(2))+f1_a(x_a(1)));
fprintf('\n8.3 Problem 5:\n')
fprintf('a) P2(x) = %2.7f + (%2.7f)(x-%2.6f) + (%2.7f)(x-%2.6f)(x-%d)\n',A_a,B_a,x_a(3),C_a,x_a(3),x_a(2))


% Part b
t_b = [-sqrt(3)/2; 0; sqrt(3)/2];   
a_b = 0;
b_b = 2;
x_b = (t_b*(b_b-a_b)+a_b+b_b)/2; % transform t to x
x_b = sort(x_b);
f1_b = @(x) exp(-x); 

A_b = f1_b(x_b(3));
B_b = 1/t_b(3)*(f1_b(x_b(3))-f1_b(x_b(2)));
C_b = 1/(2*(t_b(3))^2)*(f1_b(x_b(3))-2*f1_b(x_b(2))+f1_b(x_b(1)));
fprintf('b) P2(x) = %2.7f + (%2.7f)(x-%2.6f) + (%2.7f)(x-%2.6f)(x-%d)\n',A_b,B_b,x_b(3),C_b,x_b(3),x_b(2))


% Part c
t_c = [-sqrt(3)/2; 0; sqrt(3)/2];   
a_c = 0;
b_c = 1;
x_c = (t_c*(b_c-a_c)+a_c+b_c)/2; % transform t to x
x_c = sort(x_c);
f1_c = @(x) ((1/2)*cos(x)) + ((1/3)*sin(2*x)); 

A_c = f1_c(x_c(3));
B_c = 2*1/t_c(3)*(f1_c(x_c(3))-f1_c(x_c(2)));
C_c = 4*1/(2*(t_c(3))^2)*(f1_c(x_c(3))-2*f1_c(x_c(2))+f1_c(x_c(1)));
fprintf('c) P2(x) = %2.7f + (%2.7f)(x-%2.7f) + (%2.7f)(x-%2.7f)(x-%1.1f)\n',A_c,B_c,x_c(3),C_c,x_c(3),x_c(2))


% Part d
t_d = [-sqrt(3)/2; 0; sqrt(3)/2];   
a_d = 1;
b_d = 3;
x_d = (t_d*(b_d-a_d)+a_d+b_d)/2; % transform t to x
x_d = sort(x_d);
f1_d = @(x) x*log(x); 

A_d = f1_d(x_d(3));
B_d = 1/t_d(3)*(f1_d(x_d(3))-f1_d(x_d(2)));
C_d = 1/(2*(t_d(3))^2)*(f1_d(x_d(3))-2*f1_d(x_d(2))+f1_d(x_d(1)));
fprintf('d) P2(x) = %2.7f + (%2.6f)(x-%2.7f) + (%2.7f)(x-%2.6f)(x-%d)\n',A_d,B_d,x_d(3),C_d,x_d(3),x_d(2))

%% 8.4 Problem 5
% since f(x)q(x) = p(x), here f(x)=sin x is written in Maclaurin Series form
% sin x= x^1 - x^3/6 + x^5/120;
% f(x)q(x) = 0 + x^1 + q1*x^2 + (q2-p3)*x^3 + (q3-q1/6)*x^4 + q2/6*x^5 + (q1/120-q3/6)*x^6
% then we can compare coefficients on both sides to get 
q0 = 1;   % simple choice p0 = 0
p1 = 1;
q2 = 1/120*6;  % as for x^5,  q2/6 = 1/120 
q3 = 0;q1 = 0; % as 6*q3-q1 = 0 and   q1-20*q3 = 0
p3 = q2-1/6;
p2 = q1;
% By getting these coefficients, we get the r(x):
% Since p0 = p2 = q1 = q3 = 0, we just ignore those terms
% Also, we have p1 = 1, p3 = -7/60, q0 = 1, q2 = 1/20
fprintf('\n8.4 Problem 5:\n')
fprintf('We get the P2(x) = (%2.7f*x + (%2.7f)*x^3) / (%2.7f+%2.7f*x^2)\n',p1,p3,q0,q2)
r = @(x) (p1*x+p2*x.^2+p3*x.^3)/(1+q1*x+q2*x.^2);   
% The 6 degree of Maclaurin Series form of sin(x):
Maclaurin = @(x) x - x.^3/6 + x.^5/120;
% define original f(x) = sin(x)
f = @(x) sin(x);
fprintf('We can use the table below to compare the difference\n')
fprintf('i         xi         f(xi)         Maclaurin(xi)         r(xi)\n')
for i = 0:5
    xi = i*0.1;
    fprintf('%d        %2.1f      %2.8f        %2.8f         %2.8f\n',i,xi,f(xi),Maclaurin(xi),r(xi))
end
