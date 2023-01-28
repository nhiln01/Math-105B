function Y=Hermite_NhiNguyen(A)

alappontok=A(:,1);
fvertekek=A(:,2);
[n,m]=size(A);
M=zeros(1,m*n);
for i=1:n
    o=0;
    for j=1:m      
        if A(i,j)~=Inf
           o=o+1; 
        end;    
    end;
    M(i)=o-1;            
end;
k=sum(M);
B=zeros(k,k+1);           
C=[];           
l=1;
aszam=1;
for i=1:k   
    
    if l>M(aszam)         
        l=1;
        aszam=aszam+1;       
    end;
    
 B(i,1)=alappontok(aszam);
 B(i,2)=fvertekek(aszam); 
 C=[C;A(aszam,:)];
 l=l+1;
         
end;
szamlaloban=2;
nevezoben=1;
for l=3:k+1
    for i=1:k+2-l   
    
        if B(i,nevezoben)==B(i+l-2,nevezoben) 
            B(i,l)=C(i,l)/factorial(l-2);
        else    
            B(i,l)=(B(i,szamlaloban)-B(i+1,szamlaloban))/(B(i,nevezoben)-B(i+l-2,nevezoben));
        end;
    
    end;    
      szamlaloban=szamlaloban+1;
end;
E=B(1,:);
X=B(:,1);
syms x;
syms H;
H=E(2);
for i=3:k+1
    z=1;
    for j=1:i-2
       
        z=z*(sym(x)-X(j));
    end;   
        H=H+E(i)*z;    
end;
B;
p=H;
Y=(H);