clear
clc

% Problem 4.3; 17
fprintf('4.3 Number 17 \n')

x17 = [1.8 2.0 2.2 2.4 2.6];
f17 = [3.12014 4.42569 6.04241 8.03014 10.46675];

     % trapezoidal formula 
     t17 = ((x17(5)-x17(1))*(f17(1) + f17(5)))/2;
     
     % simpson's formula
     s17 = ((x17(3)-x17(1))*(f17(1) + (4*f17(3)) + f17(5)))/3;
     
     % newton's cote formula
     n17 = (2*(x17(2)-x17(1))*(7*f17(1)+32*f17(2)+12*f17(3)+32*f17(4)+7*f17(5)))/45;
     
     % midpoint formula
     m17 = (x17(5)-x17(1))*f17(3);
     
     % simpson's three-eighths rule
     e17 = 3*(x17(5)-x17(1))/3*(((f17(1)+f17(2))/2)+(3/2*(f17(2)+f17(3)))+((3/2)*(f17(3)+f17(4)))+((f17(4)+f17(5))/2))/8;     

     fprintf('Formula (4.23) yields %0.5f. \n', t17)
     fprintf('Formula (4.24) yields %0.5f. \n', s17)
     fprintf('Formula (4.26) yields %0.5f. \n', n17)
     fprintf('Formula (4.27) yields %0.5f. \n', m17)
     fprintf('Formula (4.29) yields %0.5f. \n', e17)
     fprintf('\n')
     

% Problem 4.4; 11
fprintf ('4.4 Number 11 \n')

    % Part a
syms x;
f11 = exp(2*x)*sin(3*x);
t11 = ((2-0)*((vpa(subs(f11,x,0))) + vpa(subs(f11,x,2)))/2);
    
x11 = linspace(0,2,2168);
f11_prime = diff(f11,2);
max_ksi11a = max(abs(vpa(subs(f11_prime,x,x11))));
max_value11a = sqrt(10^(-4)/((1/6)*max_ksi11a));
fprintf('a) h < %0.6f, n>= %1f, approximation = %1f \n', max_value11a, floor(2/max_value11a),t11)

    % Part b

x11b = linspace(0,2,2168);
f11b_prime = diff(f11,4);
max_ksi11b = max(abs(vpa(subs(f11b_prime,x,x11b))));
max_value11b = (10^(-4)/((1/90)*max_ksi11b))^(1/4);
fprintf('b) h < %0.6f, n>= %1f \n', max_value11b, floor(2/max_value11b))

    % Part c
    

fprintf('\n')

% Problem 4.4; 12
fprintf ('4.4 Number 12 \n')
syms x;
f12 = x^2*cos(x);
t12 = ((pi-0)*((vpa(subs(f12,x,0))) + vpa(subs(f12,x,pi)))/2);
    
x12 = linspace(0,2,2168);
f12_prime = diff(f12,2);
max_ksi12a = max(abs(vpa(subs(f12_prime,x,x12))));
max_value12a = sqrt(10^(-4)/((1/6)*max_ksi12a));
fprintf('a) h < %0.6f, n>= %1f, approximation = %1f \n', max_value12a, floor(2/max_value12a),t12)
