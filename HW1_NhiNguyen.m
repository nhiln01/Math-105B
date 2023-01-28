% define variables and functions
xvalues = [1.00 1.05 1.10 1.15];
yvalues = [0.1924 0.2414 0.2933 0.3492];
n = 4;
xx = 1.09;

syms x
f = log10(tan(x));
g = (x-1.00)*(x-1.05)*(x-1.10)*(x-1.15);

% find 4th and 5th derivatives of f
f_diff4 = diff(f,4);
f_diff5 = diff(f,5);

% use 5th derivative of f to find critical points 
critical_f4 = double(solve(f_diff5==0));

% values of f at critical points, 1.00 and 1.15
value_crit = vpa(subs(f_diff4,x,critical_f4));
value_endpoint1 = vpa(subs(f_diff4,x,1.00));
value_endpoint2 = vpa(subs(f_diff4,x,1.15));

% find maximum value of 4th derivative of f
value_diff4 = [value_crit, value_endpoint1, value_endpoint2];
max_f4 = max(abs(value_diff4));

% find g(1.09)
g_value = vpa(subs(g,x,1.09));

% calculate the error bound
error_bound = g_value*max_f4/factorial(4);

% calculate the lagrange approximation
lagrange_value = lagrange_nhiln(xvalues,yvalues,n,xx);

% displayed answer
fprintf('The third Lagrange polynomial approximation to f(1.09) is %1f, ', lagrange_value)
fprintf('the bound for the error in the approximation is %0.2e', error_bound)
