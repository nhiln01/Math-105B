function r =Romberg_NhiNguyen(a,b,n)

h = (b-a);
r(1,1) = (b-a)*(f(a)+f(b))/2;

for i = 2:n
    subtotal = 0;
    for k = 1:2^(i-2)
        subtotal = subtotal + f(a + (k - 0.5)*h(i));
    end
    
    r(2,1) = f(i-1,1)/2 + h(i)*subtotal;
    
    for j = 2:i
        r(2,j) = r(2,j-1)+(r(2,j-1)-r(1,j-1))/(4^(j-1)-1);
    end
    
    for j=1:i
        r(1,j) = r(2,j);
    end
end
end