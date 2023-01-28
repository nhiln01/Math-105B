clear;
clc;

% 4.6  Question 5 

fprintf('4.6 Question 5 \n')
tol_5 = 10^(-5);  % the given tolerance
n = 20; % max number of iterations

% Part a
f_5a = @(x) exp(2*x)*sin(3*x);
fprintf('a)');
AdaptiveQuadrature_NhiNguyen(1,3,tol_5,f_5a,n)

% Part b
f_5b = @(x) exp(3*x)*sin(2*x);
fprintf('b)');
AdaptiveQuadrature_NhiNguyen(1,3,tol_5,f_5b,n)

% Part c
f_5c = @(x) (((2*x)*cos(2*x)) - (x-2)^2);
fprintf('c)');
AdaptiveQuadrature_NhiNguyen(0,5,tol_5,f_5c,n)

% Part d
f_5d = @(x) (((4*x)*cos(2*x)) - (x-2)^2);
fprintf('d)');
AdaptiveQuadrature_NhiNguyen(0,5,tol_5,f_5d,n)


% 4.7 Question 10
fprintf(' 4.7 Question 10 \n');

f_10 = @(x) sqrt(1+(cos(x)).^2);
% Using the Gauss-Legendre (n=5) to get integration for each subinterval
BB=48; 
N=16; % number of subintervals
a = 0;
b = BB/N;
sum1 = 0;    % initialization
for i = 1:N   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(b-a)+a+b)/2;  % tansform t to x
    integration =  weights'*f_10(x)*(b-a)/2;
    sum1 = sum1 + integration;    % sum the approximation of each subinteval integration
    a = b;
    b = b+BB/N;   % move to the next interval
end
fprintf('The total sum of these subintervals is: %2.6f,',sum1)
Actual_value = integral(f_10,0,BB);    % use MATLAB integral command to get actual value
error=abs(sum1 - Actual_value);
fprintf(' which is very close to the actual value: %2.6f.\n',Actual_value)
fprintf('The absolute error is %2.6f.\n', error)

