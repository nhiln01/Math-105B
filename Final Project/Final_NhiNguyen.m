

%% Problem 2

clear
clc

% Curve 1 
x_curve1 = [6.5 6.9 7.3 7.7 8.1 8.5 8.9 9.3];
y_curve1 = [20.2 21.4 21.75 21.9 21.8 21.7 21.6 21.25];
curve1 = MyFinalFunction_NhiNguyen(x_curve1,y_curve1);

syms x
    curve_1_1 = vpa(subs(curve1(1),x,(6.5:0.05:6.9)-x_curve1(1)));
    curve_1_2 = vpa(subs(curve1(2),x,(6.9:0.05:7.3)-x_curve1(2)));
    curve_1_3 = vpa(subs(curve1(3),x,(7.3:0.05:7.7)-x_curve1(3)));
    curve_1_4 = vpa(subs(curve1(4),x,(7.7:0.05:8.1)-x_curve1(4)));
    curve_1_5 = vpa(subs(curve1(5),x,(8.1:0.05:8.5)-x_curve1(5)));
    curve_1_6 = vpa(subs(curve1(6),x,(8.5:0.05:8.9)-x_curve1(6)));
    curve_1_7 = vpa(subs(curve1(7),x,(8.9:0.05:9.3)-x_curve1(7)));

hold on

% Curve 2
x_curve2 = [9.3 10 12 13];
y_curve2 = [21.25 21.6 21.95 21.8];
curve2 = MyFinalFunction_NhiNguyen(x_curve2,y_curve2);

syms x
    curve_2_1 = vpa(subs(curve2(1),x,(9.3:0.05:10)-x_curve2(1)));
    curve_2_2 = vpa(subs(curve2(2),x,(10:0.05:12)-x_curve2(2)));
    curve_2_3 = vpa(subs(curve2(3),x,(12:0.05:13)-x_curve2(3)));

% Curve 3
x_curve3 = [13 13.3 15 16 16.25];
y_curve3 = [21.8 22.1 22.6 22 21.25];
curve3 = MyFinalFunction_NhiNguyen(x_curve3,y_curve3);

syms x
    curve_3_1 = vpa(subs(curve3(1),x,(13:0.05:13.3)-x_curve3(1)));
    curve_3_2 = vpa(subs(curve3(2),x,(13.3:0.05:15)-x_curve3(2)));
    curve_3_3 = vpa(subs(curve3(3),x,(15:0.05:16)-x_curve3(3)));
    curve_3_4 = vpa(subs(curve3(4),x,(16:0.05:16.25)-x_curve3(4)));

title('Nhi Nguyen')
xlabel('x axis')
xlim([6 17])
ylabel('y axis')
ylim([15 25])
p2 = plot((6.5:0.05:6.9),curve_1_1,(6.9:0.05:7.3),curve_1_2,(7.3:0.05:7.7),curve_1_3,(7.7:0.05:8.1),curve_1_4,(8.1:0.05:8.5),curve_1_5,(8.5:0.05:8.9),curve_1_6,(8.9:0.05:9.3),curve_1_7,(9.3:0.05:10),curve_2_1,(10:0.05:12),curve_2_2,(12:0.05:13),curve_2_3,(13:0.05:13.3),curve_3_1,(13.3:0.05:15),curve_3_2,(15:0.05:16),curve_3_3,(16:0.05:16.25),curve_3_4,'color','g');

title('Nhi Nguyen')
xlabel('x axis')
xlim([6 17])
ylabel('y axis')
ylim([15 25])

%% Problem 3
syms x;
f1(x) = piecewise(6.5<=x<7,(6*x^3)/5 - (7*x)/2 + 35/2,7<=x<8,- (3*x.^3)/5 + (9*x.^2)/5 - (13*x)/5 + 159/10,8<=x<9,29/2 - (4*x)/5);
xx = 0:0.001:(9-6.5);

N=3;
a0=(1/(7-6.5))*int(f1,x,0,(7-6.5)); % f1ind a0
a=zeros(1,N); % a1,a2,...,a_N
b=zeros(1,N); % b1,b2,...,b_N

syms F1(x)
F1_c(x) = int(f1(x),x,0,x);
F1_s(x) = int(f1(x),x,0,x);

a(1)=(1/(7-6.5))*F1_c(9-6.5); % f1ind a1
b(1)=(1/(7-6.5))*F1_s(9-6.5); % f1ind b1
Sakbk(x)=a(1)*cos(x)+b(1)*sin(x);         %initialization f1or sum when k=1
for k = 2:N       % k starts with 2 here since k=1 is calculated
    a(k)=(1/(7-6.5))*int(f1*cos(k*x),x,0,(7-6.5)); % find ak
    b(k)=(1/(7-6.5))*int(f1*sin(k*x),x,0,(7-6.5)); % find bk
  Sakbk(x)=a(k)*cos(k*x)+b(k)*sin(k*x)+Sakbk(x);
end
S_N(x)=a0/2+Sakbk(x); % find S_N
p3=plot(xx,S_N(xx),'r');

fprintf("S_3(x) = %2.4f/2+ (%2.4f)*cos(x)+ %2.4f*cos(2x)+ (%2.4f)*cos(3x)+%2.4f*sin(x) + (%2.4f)*sin(2x) + %2.4f*sin(3x)\n",a0,a(1),a(2),a(3), b(1),b(2),b(3))

%% Problem 4

x_4_1 = 6.5+(0.4).*rand(1,1);
syms x
y_4_1 = vpa(subs(curve1(1),x,x_4_1-x_curve1(1)));
p4_1 = plot(x_4_1,y_4_1,'.','color','#964B00');

x_4_2 = 6.5 + (0.4).*rand(1,1);
syms x
y_4_2 = vpa(subs(curve1(1),x,x_4_2-x_curve1(1)));
p4_2 = plot(x_4_2,y_4_2,'.','color','#964B00');

x_4_3 = 6.9 + (0.4).*rand(1,1);
syms x
y_4_3 = vpa(subs(curve1(2),x,x_4_3-x_curve1(2)));
p4_3 = plot(x_4_3,y_4_3,'.','color','#964B00');

x_4_4 = 6.9 + (0.4).*rand(1,1);
syms x
y_4_4 = vpa(subs(curve1(2),x,x_4_4-x_curve1(2)));
p4_4 = plot(x_4_4,y_4_4,'.','color','#964B00');

x_4_5 = 7.3 + (0.4).*rand(1,1);
syms x
y_4_5 = vpa(subs(curve1(3),x,x_4_5-x_curve1(3)));
p4_5 = plot(x_4_5,y_4_5,'.','color','#964B00');

x_4_6 = 7.7 + (0.4).*rand(1,1);
syms x
y_4_6 = vpa(subs(curve1(4),x,x_4_6-x_curve1(4)));
p4_6 = plot(x_4_6,y_4_6,'.','color','#964B00');

x_4_7 = 8.1 + (0.4).*rand(1,1);
syms x
y_4_7 = vpa(subs(curve1(5),x,x_4_7-x_curve1(5)));
p4_7 = plot(x_4_7,y_4_7,'.','color','#964B00');

x_4_8 = 8.5 + (0.4).*rand(1,1);
syms x
y_4_8 = vpa(subs(curve1(6),x,x_4_8-x_curve1(6)));
p4_8 = plot(x_4_8,y_4_8,'.','color','#964B00');

x_4_9 = 8.9 + (0.4).*rand(1,1);
syms x
y_4_9 = vpa(subs(curve1(7),x,x_4_9-x_curve1(7)));
p4_9 = plot(x_4_9,y_4_9,'.','color','#964B00');

x_4_10 = 9.3 + (0.7).*rand(1,1);
syms x
y_4_10 = vpa(subs(curve2(1),x,x_4_10-x_curve2(1)));
p4_10 = plot(x_4_10,y_4_10,'.','color','#964B00');

x_4_11 = 9.3 + (0.7).*rand(1,1);
syms x
y_4_11 = vpa(subs(curve2(1),x,x_4_11-x_curve2(1)));
p4_11 = plot(x_4_11,y_4_11,'.','color','#964B00');

x_4_12 = 10 + (2).*rand(1,1);
syms x
y_4_12 = vpa(subs(curve2(2),x,x_4_12-x_curve2(2)));
p4_12 = plot(x_4_12,y_4_12,'.','color','#964B00');

x_4_13 = 10 + (2).*rand(1,1);
syms x
y_4_13 = vpa(subs(curve2(2),x,x_4_13-x_curve2(2)));
p4_13 = plot(x_4_13,y_4_13,'.','color','#964B00');

x_4_14 = 12 + (1).*rand(1,1);
syms x
y_4_14 = vpa(subs(curve2(3),x,x_4_14-x_curve2(3)));
p4_14 = plot(x_4_14,y_4_14,'.','color','#964B00');

x_4_15 = 12 + (1).*rand(1,1);
syms x
y_4_15 = vpa(subs(curve2(3),x,x_4_15-x_curve2(3)));
p4_15 = plot(x_4_15,y_4_15,'.','color','#964B00');

x_4_16 = 13 + (0.3).*rand(1,1);
syms x
y_4_16 = vpa(subs(curve3(1),x,x_4_16-x_curve3(1)));
p4_16 = plot(x_4_16,y_4_16,'.','color','#964B00');

x_4_17 = 13.3 + (1.7).*rand(1,1);
syms x
y_4_17 = vpa(subs(curve3(2),x,x_4_17-x_curve3(2)));
p4_17 = plot(x_4_17,y_4_17,'.','color','#964B00');

x_4_18 = 13.3 + (1.7).*rand(1,1);
syms x
y_4_18 = vpa(subs(curve3(2),x,x_4_18-x_curve3(2)));
p4_18 = plot(x_4_18,y_4_18,'.','color','#964B00');

x_4_19 = 15 + (1).*rand(2,1);
syms x
y_4_19 = vpa(subs(curve3(3),x,x_4_19-x_curve3(3)));
p4_19 = plot(x_4_19,y_4_19,'.','color','#964B00');

x_4_20 = 16 + (0.25).*rand(1,1);
syms x
y_4_20 = vpa(subs(curve3(4),x,x_4_20-x_curve3(4)));
p4_20 = plot(x_4_20,y_4_20,'.','color','#964B00');

xlabel('x axis')
xlim([6 17])
ylabel('y axis')
ylim([15 25])
p4 = [p4_1 p4_2 p4_3 p4_4 p4_5 p4_6 p4_7 p4_8 p4_9 p4_10 p4_11 p4_12 p4_13 p4_14 p4_15 p4_16 p4_17 p4_18 p4_19 p4_20];

%% Problem 5
x_5 = [x_4_1;x_4_2;x_4_3;x_4_4;x_4_5;x_4_6;x_4_7;x_4_8;x_4_9;x_4_10;x_4_11;x_4_12;x_4_13;x_4_14;x_4_15;x_4_16;x_4_17;x_4_18;x_4_19;x_4_20];
y_5 = [y_4_1;y_4_2;y_4_3;y_4_4;y_4_5;y_4_6;y_4_7;y_4_8;y_4_9;y_4_10;y_4_11;y_4_12;y_4_13;y_4_14;y_4_15;y_4_16;y_4_17;y_4_18;y_4_19;y_4_20];

m = length(x_5);
s1 = sum(x_5);
s2 = sum(y_5);
s3 = norm(x_5)^2;   % sum of xi^2 is equivalent to 2-norom(x)^2
s4 = dot(x_5,y_5);    % sum of xiyi is equivalent to x dot y
% Thus we can use these values to get A and b
A = [m, s1; s1, s3];   % here we only need to use line of form: P1(x) = a0 + a1x
b = [s2; s4];
X = A^(-1)*b;
a0 = X(1);
a1 = X(2);
fprintf('Problem 5: \n')
fprintf('The Least Square line is y = L(x) = %2.6f + %2.6fx\n',a0,a1);
ft = @(t) a0+a1*t;
xx = 0:1:max(x_5)+10;

H_A = (90-a0)/a1;
H_D = (60-a0)/a1;

x5 = linspace(6.5,16.25,100);
y5 = a0 + a1*x5;
p5 = plot(x5,y5,'color','b');

hold off


%% Legend
legend([p2(1) p3 p4(1) p5],{'top curve','continuous trigonometric method','20 random points','least square method'})










