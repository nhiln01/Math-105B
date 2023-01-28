function [f] = CubicSpline_NhiNguyen(x,f_x,f_x_prime)
    
n = length(x);
a = f_x;
b = zeros(1,n);
c = zeros(1,n);
d = zeros(1,n);
FPO = f_x_prime(1);
FPN = f_x_prime(end);

for i = 1:n-1  
    h(i) = x(i+1) - x(i);
end

alpha(1) = (3*(a(2)-a(1)))/(h(1))-3*FPO;
alpha(n) = 3*FPN - (3*(a(n)-a(n-1)))/(h(n-1));

for i = 2:n-1
    alpha(i) = (3/h(i))*(a(i+1)-a(i)) - (3/(h(i-1)))*(a(i)-a(i-1));
end

l(1) = 2*h(1);
u(1) = 0.5;
z(1) = alpha(1)/l(1);

for i =  2:n-1
    l(i) = 2*(x(i+1)-x(i-1)) - h(i-1)*u(i-1);
    u(i) = h(i)/l(i);
    z(i) = (alpha(i)-h(i-1)*z(i-1))/l(i);
end

l(n) = h(n-1)*(2-u(n-1));
z(n) = (alpha(n)- h(n-1)*z(n-1))/l(n);
c(n) = z(n);

for j = n-1:-1:1
    c(j) = z(j) - u(j)*c(j+1);
    b(j) = (a(j+1)-a(j))/(h(j))-(h(j)*(c(j+1)+2*c(j))/3);
    d(j) = (c(j+1)-c(j))/(3*h(j));
end

b(end) = 0;
c(end) = 0;
d(end) = 0;

f = [(0:n-1); x; a; b; c; d; f_x_prime];

end

