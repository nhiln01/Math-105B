clc;
clear;

% Problem 7

%Part a
x_7a = [-0.1 0.0 0.2 0.3];
y_7a = [5.30000 2.00000 3.19000 1.00000];
p_7a = length(x_7a)-1;

DD_7a = divdiff_nhiln(x_7a,y_7a);
a_coeff = DD_7a(1,:);
ans_7a_1 = ['#7a The interpolating polynomial of degree ',num2str(p_7a),' for the unequally spaced points is '];
ans_7a_2 = [' ',num2str(DD_7a(1,1)),' + ',num2str(DD_7a(1,2)),'(x- (',num2str(x_7a(1,1)),')) + ', num2str(DD_7a(1,3)),'(x- (',num2str(x_7a(1,1)),'))(x- (',num2str(x_7a(1,2)),')) + ',num2str(DD_7a(1,4)),'(x- (',num2str(x_7a(1,1)),'))(x- (',num2str(x_7a(1,2)),'))(x- (',num2str(x_7a(1,3)),')).'];

disp(ans_7a_1)
disp(ans_7a_2)

% Part b
x_7b = [-0.1 0.0 0.2 0.3 0.35];
y_7b = [5.30000 2.00000 3.19000 1.00000 0.97260];
p_7b = length(x_7b)-1;

DD_7b = divdiff_nhiln(x_7b,y_7b);
b_coeff = DD_7b(1,:);
ans_7b_1 = ['#7b The interpolating polynomial of degree ',num2str(p_7b),' for the unequally spaced points is '];
ans_7b_2 = [' ',num2str(DD_7b(1,1)),' + ',num2str(DD_7b(1,2)),'(x- (',num2str(x_7b(1,1)),')) + ', num2str(DD_7b(1,3)),'(x- (',num2str(x_7b(1,1)),'))(x- (',num2str(x_7b(1,2)),')) + ',num2str(DD_7b(1,4)),'(x- (',num2str(x_7b(1,1)),'))(x- (',num2str(x_7b(1,2)),'))(x- (',num2str(x_7b(1,3)),')) + ',num2str(DD_7b(1,5)),'(x- (',num2str(x_7b(1,1)),'))(x- (',num2str(x_7b(1,2)),'))(x- (',num2str(x_7b(1,3)),'))(x- (',num2str(x_7b(1,4)),')).'];

disp(ans_7b_1)
disp(ans_7b_2)


% Problem 8

%Part a
x_8a = [0.0 0.1 0.3 0.6 1.0];
y_8a = [-6.00000 -5.89483 -5.65014 -5.17788 -4.28172];
p_8a = length(x_8a)-1;

DD_8a = divdiff_nhiln(x_8a,y_8a);
ans_8a_1 = ['#8a The interpolating polynomial of degree ',num2str(p_8a),' for the unequally spaced points is '];
ans_8a_2 = [' ',num2str(DD_8a(1,1)),' + ',num2str(DD_8a(1,2)),'(x- (',num2str(x_8a(1,1)),')) + ', num2str(DD_8a(1,3)),'(x- (',num2str(x_8a(1,1)),'))(x- (',num2str(x_8a(1,2)),')) + ',num2str(DD_8a(1,4)),'(x- (',num2str(x_8a(1,1)),'))(x- (',num2str(x_8a(1,2)),'))(x- (',num2str(x_8a(1,3)),')) + ',num2str(DD_8a(1,5)),'(x- (',num2str(x_8a(1,1)),'))(x- (',num2str(x_8a(1,2)),'))(x- (',num2str(x_8a(1,3)),'))(x- (',num2str(x_8a(1,4)),')).'];

fprintf('\n')
disp(ans_8a_1)
disp(ans_8a_2)

% Part b
x_8b = [0.0 0.1 0.3 0.6 1.0 1.1];
y_8b = [-6.00000 -5.89483 -5.65014 -5.17788 -4.28172 -3.99583];
p_8b = length(x_8b)-1;

DD_8b = divdiff_nhiln(x_8b,y_8b);
ans_8b_1 = ['#8b The interpolating polynomial of degree ',num2str(p_8b),' for the unequally spaced points is '];
ans_8b_2 = [' ',num2str(DD_8b(1,1)),' + ',num2str(DD_8b(1,2)),'(x- (',num2str(x_8b(1,1)),')) + ', num2str(DD_8b(1,3)),'(x- (',num2str(x_8b(1,1)),'))(x- (',num2str(x_8b(1,2)),')) + ',num2str(DD_8b(1,4)),'(x- (',num2str(x_8b(1,1)),'))(x- (',num2str(x_8b(1,2)),'))(x- (',num2str(x_8b(1,3)),')) + ',num2str(DD_8b(1,5)),'(x- (',num2str(x_8b(1,1)),'))(x- (',num2str(x_8b(1,2)),'))(x- (',num2str(x_8b(1,3)),'))(x- (',num2str(x_8b(1,4)),')) + ',num2str(DD_8b(1,6)),'(x- (',num2str(x_8b(1,1)),'))(x- (',num2str(x_8b(1,2)),'))(x- (',num2str(x_8b(1,3)),'))(x- (',num2str(x_8b(1,4)),'))(x- (',num2str(x_8b(1,5)),')).'];

disp(ans_8b_1)
disp(ans_8b_2)

