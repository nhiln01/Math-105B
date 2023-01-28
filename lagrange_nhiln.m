function [Lagrange] = lagrange_nhiln(x,y,n,xx)
%   Lagrange interpolation polynomial fitting a set of points
%   LAGRANG(x,y,n,xx)  where x and y are row vectors
%   defining a set of n points uses Lagrange's method to find 
%   the (n-1)-th order polynomial in x that passes through these 
%   points. xx is the approximation point.
    
    format shortG
    sum=0;
    for i = 1:n
        product = y(i);
        for j=1:n
            if (i~=j)
                product = product*(xx-x(j))/(x(i)-x(j));
            end
        end   
    sum = sum + product;
    end
    
    Lagrange=sum
    end