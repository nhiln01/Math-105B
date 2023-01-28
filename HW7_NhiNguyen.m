clear
clc

% Sec 8.1 Problem 8
% let the Homework scores be x and Final scores be y
x = [302;325;285;339;334;322;331;279;316;347;343;290;326;233;254;323;337;337;304;319;234;337;351;339;343;314;344;185;340;316];
y = [45;72;54;54;79;65;99;63;65;99;83;74;76;57;45;83;99;70;62;66;51;53;100;67;83;42;79;59;75;45];


m = length(x);
s1 = sum(x);
s2 = sum(y);
s3 = norm(x)^2;   % sum of xi^2 is equivalent to 2-norom(x)^2
s4 = dot(x,y);    % sum of xiyi is equivalent to x dot y
% Thus we can use these values to get A and b
A = [m, s1; s1, s3];   % here we only need to use line of form: P1(x) = a0 + a1x
b = [s2; s4];
X = A^(-1)*b;
a0 = X(1);
a1 = X(2);
fprintf('8.1 Question 8:\n')
fprintf('The Least Square line is P(x) = %2.6f + %2.6fx\n',a0,a1);
ft = @(t) a0+a1*t;
xx = 0:1:max(x)+10;

H_A = (90-a0)/a1;
H_D = (60-a0)/a1;

fprintf('The homework grade required to predict a minimal A grade on the final is %3.f.\n',H_A);
fprintf('The homework grade required to predict a minimal D grade on the final is %3.f.\n',H_D);