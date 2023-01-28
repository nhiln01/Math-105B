function XI = Simpsons_NhiNguyen(f,a,b,n)

h = (b-a)/n;
XI(0) = f(a)+f(b);
XI(1) = 0;
XI(2) = 0;

for i = 1:n-1
    X = a+i*h;
    if mod(i,2) == 0
        XI(2) = XI(2) + f(X);
    else
        XI(1) = XI(1) + f(X);
    end
end

XI = (h*(XI(0) + 2*XI(2)+4*XI(1)))/3;
end