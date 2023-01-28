function p = neville_nhiln(x0,x,y)
%Inputs: x0-- the point at which to evaluate
%        x -- the matrix of the x terms of the ordered pairs
%        y -- the matrix of the y terms of the ordered pairs
%Output: p -- the value of the polynomial going through the n data points

n = length(x)-1;            
p = zeros(n+1,n+1); 

for i = 1:n+1       
  p(i,i) = y(i);     
end

for j = 1:n+1       
  for i = 1:n+1-j     
    p(i,i+j) = ((x(i+j)-x0)*p(i,i+j-1) + (x0-x(i))*p(i+1,i+j))/(x(i+j)-x(i));
  end
end

p = p(1,n+1);
end