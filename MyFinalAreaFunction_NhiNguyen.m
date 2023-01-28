function [APP] = MyFinalAreaFunction_NhiNguyen(a1,b1,tol,f,n)
APP = 0; %Step 1
i = 1;
TOL = zeros(1,n);
a = zeros(1,n);
h = zeros(1,n);
FA = zeros(1,n);
FC = zeros(1,n);
FB = zeros(1,n);
S = zeros(1,n);
L = zeros(1,n);
v = zeros(1,8);
TOL(i) = 10*tol;
a(i) = a1;
h(i) = 0.5*(b1-a1);
FA(i) = f(a1);
FC(i) = f((a1+h(i)));
FB(i) = f(b1);
S(i) = h(i)*(FA(i)+4*FC(i)+FB(i))/3;  %Approximation from Simpson’s method for entire interval 
L(i) = 1;

while i>0 %Step 2
    FD = f((a(i)+0.5*h(i))); %Step 3
    FE = f((a(i)+1.5*h(i)));
    S1 = h(i)*(FA(i)+4*FD+FC(i))/6;    %Approximations from Simpson's method for halves of subintervals
    S2 = h(i)*(FC(i)+4*FE+FB(i))/6;
    v(1) = a(i);
    v(2) = FA(i);
    v(3) = FC(i);
    v(4) = FB(i);
    v(5) = h(i);
    v(6) = TOL(i);
    v(7) = S(i);
    v(8) = L(i);

    i = i-1;  %Step 4      %delete the level  

        if abs(S1+S2-v(7)) < v(6) %Step 5
        APP = APP+(S1+S2);
    else
        if v(8) >= n
            fprintf('Procedure fails')
        else
            i = i+1;                  %data for right half of subinterval
            a(i) = v(1) + v(5);
            FA(i) = v(3);
            FC(i) = FE;
            FB(i) = v(4);
            h(i) = 0.5*v(5);
            TOL(i) = 0.5*v(6);
            S(i) = S2;
            L(i) = v(8)+1;
            i = i+1;                  %data for left half of subinterval
            a(i) = v(1);
            FA(i) = v(2);
            FC(i) = FD;
            FB(i) = v(3);
            h(i) = h(i-1);
            TOL(i) = TOL(i-1);
            S(i) = S1;
            L(i) = L(i-1);
        end
    end
end
end

