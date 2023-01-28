clear
clc

% Curve 1

x_curve1 = [6.5 7 8 9];
y_curve1 = [17.5 15.9 14.5 13.7];
curve1 = MyFunction_NhiNguyen(x_curve1,y_curve1);

syms x
for i1 = 1:length(x_curve1)
    curve_1_1 = vpa(subs(curve1(1),x,(6.5:0.05:7)-x_curve1(1)));
    curve_1_2 = vpa(subs(curve1(2),x,(7:0.05:8)-x_curve1(2)));
    curve_1_3 = vpa(subs(curve1(3),x,(8:0.05:9)-x_curve1(3)));
end

plot((6.5:0.05:7),curve_1_1,(7:0.05:8),curve_1_2,(8:0.05:9),curve_1_3);
title('Bear')

hold on


% Curve 2

x_curve2 = [6.5 6.8 7];
y_curve2 = [17.5 18.6 19.3];
curve2 = MyFunction_NhiNguyen(x_curve2,y_curve2);

syms x
for i2 = 1:length(x_curve2)
    curve_2_1 = vpa(subs(curve2(1),x,(6.5:0.05:6.8)-x_curve2(1)));
    curve_2_2 = vpa(subs(curve2(2),x,(6.8:0.05:7)-x_curve2(2)));
end

plot((6.5:0.05:6.8),curve_2_1,(6.8:0.05:7),curve_2_2);


% Curve 3

x_curve3 = [6.5 7];
y_curve3 = [20.2 19.4];
curve3 = MyFunction_NhiNguyen(x_curve3,y_curve3);

syms x
for i3 = 1:length(x_curve3)
    curve_3_1 = vpa(subs(curve3(1),x,(6.5:0.05:7)-x_curve3(1)));
end

plot((6.5:0.05:7),curve_3_1);


% Curve 4 
x_curve4 = [6.5 6.9 7.3 7.7 8.1 8.5 8.9 9.3];
y_curve4 = [20.2 21.4 21.75 21.9 21.8 21.7 21.6 21.25];
curve4 = MyFunction_NhiNguyen(x_curve4,y_curve4);

syms x
for i4 = 1:length(x_curve4)
    curve_4_1 = vpa(subs(curve4(1),x,(6.5:0.05:6.9)-x_curve4(1)));
    curve_4_2 = vpa(subs(curve4(2),x,(6.9:0.05:7.3)-x_curve4(2)));
    curve_4_3 = vpa(subs(curve4(3),x,(7.3:0.05:7.7)-x_curve4(3)));
    curve_4_4 = vpa(subs(curve4(4),x,(7.7:0.05:8.1)-x_curve4(4)));
    curve_4_5 = vpa(subs(curve4(5),x,(8.1:0.05:8.5)-x_curve4(5)));
    curve_4_6 = vpa(subs(curve4(6),x,(8.5:0.05:8.9)-x_curve4(6)));
    curve_4_7 = vpa(subs(curve4(7),x,(8.9:0.05:9.3)-x_curve4(7)));
end

plot((6.5:0.05:6.9),curve_4_1,(6.9:0.05:7.3),curve_4_2,(7.3:0.05:7.7),curve_4_3,(7.7:0.05:8.1),curve_4_4,(8.1:0.05:8.5),curve_4_5,(8.5:0.05:8.9),curve_4_6,(8.9:0.05:9.3),curve_4_7);


% Curve 5

x_curve5 = [9.3 10 12 13];
y_curve5 = [21.25 21.6 21.95 21.9];
curve5 = MyFunction_NhiNguyen(x_curve5,y_curve5);

syms x
for i5 = 1:length(x_curve5)
    curve_5_1 = vpa(subs(curve5(1),x,(9.3:0.05:10)-x_curve5(1)));
    curve_5_2 = vpa(subs(curve5(2),x,(10:0.05:12)-x_curve5(2)));
    curve_5_3 = vpa(subs(curve5(3),x,(12:0.05:13)-x_curve5(3)));
end

plot((9.3:0.05:10),curve_5_1,(10:0.05:12),curve_5_2,(12:0.05:13),curve_5_3);


% Curve 6

x_curve6 = [13 13.3 15 16 16.25];
y_curve6 = [21.8 22.1 22.6 22 21.25];
curve6 = MyFunction_NhiNguyen(x_curve6,y_curve6);

syms x
for i6 = 1:length(x_curve6)
    curve_6_1 = vpa(subs(curve6(1),x,(13:0.05:13.3)-x_curve6(1)));
    curve_6_2 = vpa(subs(curve6(2),x,(13.3:0.05:15)-x_curve6(2)));
    curve_6_3 = vpa(subs(curve6(3),x,(15:0.05:16)-x_curve6(3)));
    curve_6_4 = vpa(subs(curve6(4),x,(16:0.05:16.25)-x_curve6(4)));
end

plot((13:0.05:13.3),curve_6_1,(13.3:0.05:15),curve_6_2,(15:0.05:16),curve_6_3,(16:0.05:16.25),curve_6_4);


% Curve 7

x_curve7 = [15.7 16 16.25];
y_curve7 = [19.8 20 21.25];
curve7 = MyFunction_NhiNguyen(x_curve7,y_curve7);

syms x
for i7 = 1:length(x_curve7)
    curve_7_1 = vpa(subs(curve7(1),x,(15.7:0.05:16)-x_curve7(1)));
    curve_7_2 = vpa(subs(curve7(2),x,(16:0.05:16.25)-x_curve7(2)));
end

plot((15.7:0.05:16),curve_7_1,(16:0.05:16.25),curve_7_2);


% Curve 8

x_curve8 = [15.7 16 16.5];
y_curve8 = [19.8 19 17];
curve8 = MyFunction_NhiNguyen(x_curve8,y_curve8);

syms x
for i8 = 1:length(x_curve8)
    curve_8_1 = vpa(subs(curve8(1),x,(15.7:0.05:16)-x_curve8(1)));
    curve_8_2 = vpa(subs(curve8(2),x,(16:0.05:16.5)-x_curve8(2)));
end

plot((15.7:0.05:16),curve_8_1,(16:0.05:16.5),curve_8_2);


% Curve 9

x_curve9 = [15.25 16 16.5];
y_curve9 = [14.25 15.3 17];
curve9 = MyFunction_NhiNguyen(x_curve9,y_curve9);

syms x
for i9 = 1:length(x_curve9)
    curve_9_1 = vpa(subs(curve9(1),x,(15.25:0.05:16)-x_curve9(1)));
    curve_9_2 = vpa(subs(curve9(2),x,(16:0.05:16.5)-x_curve9(2)));
end

plot((15.25:0.05:16),curve_9_1,(16:0.05:16.5),curve_9_2);


% Curve 10

x_curve10 = [15.25 15.5 16];
y_curve10 = [14.25 14 13.5];
curve10 = MyFunction_NhiNguyen(x_curve10,y_curve10);

syms x
for i10 = 1:length(x_curve10)
    curve_10_1 = vpa(subs(curve10(1),x,(15.25:0.05:15.5)-x_curve10(1)));
    curve_10_2 = vpa(subs(curve10(2),x,(15.5:0.05:16)-x_curve10(2)));
end

plot((15.25:0.05:15.5),curve_10_1,(15.5:0.05:16),curve_10_2);


% Curve 11

x_curve11 = [16 17 17.8 18.5 19 19.5];
y_curve11 = [13.5 14.05 14.25 14 13.55 12.4];
curve11 = MyFunction_NhiNguyen(x_curve11,y_curve11);

syms x
for i11 = 1:length(x_curve11)
    curve_11_1 = vpa(subs(curve11(1),x,(16:0.05:17)-x_curve11(1)));
    curve_11_2 = vpa(subs(curve11(2),x,(17:0.05:17.8)-x_curve11(2)));
    curve_11_3 = vpa(subs(curve11(3),x,(17.8:0.05:18.5)-x_curve11(3)));
    curve_11_4 = vpa(subs(curve11(4),x,(18.5:0.05:19)-x_curve11(4)));
    curve_11_5 = vpa(subs(curve11(5),x,(19:0.05:19.5)-x_curve11(5)));
end

plot((16:0.05:17),curve_11_1,(17:0.05:17.8),curve_11_2,(17.8:0.05:18.5),curve_11_3,(18.5:0.05:19),curve_11_4,(19:0.05:19.5),curve_11_5);


% Curve 12

x_curve12 = [17.5 18 19 19.5];
y_curve12 = [9.9 10.1 11 12.4];
curve12 = MyFunction_NhiNguyen(x_curve12,y_curve12);

syms x
for i12 = 1:length(x_curve12)
    curve_12_1 = vpa(subs(curve12(1),x,(17.5:0.05:18)-x_curve12(1)));
    curve_12_2 = vpa(subs(curve12(2),x,(18:0.05:19)-x_curve12(2)));
    curve_12_3 = vpa(subs(curve12(3),x,(19:0.05:19.5)-x_curve12(3)));
end

plot((17.5:0.05:18),curve_12_1,(18:0.05:19),curve_12_2,(19:0.05:19.5),curve_12_3);

% Curve 13

x_curve13 = [17.5 18];
y_curve13 = [9.9 7];
curve13 = MyFunction_NhiNguyen(x_curve13,y_curve13);

syms x
for i13 = 1:length(x_curve13)
    curve_13_1 = vpa(subs(curve13(1),x,(17.5:0.05:18)-x_curve13(1)));
end

plot((17.5:0.05:18),curve_13_1);


% Curve 14

x_curve14 = [17.5 18];
y_curve14 = [4.5 7];
curve14 = MyFunction_NhiNguyen(x_curve14,y_curve14);

syms x
for i14 = 1:length(x_curve14)
    curve_14_1 = vpa(subs(curve14(1),x,(17.5:0.05:18)-x_curve14(1)));
end

plot((17.5:0.05:18),curve_14_1);


% Curve 15

x_curve15 = [17.5 18 18.4];
y_curve15 = [4.5 4 2.75];
curve15 = MyFunction_NhiNguyen(x_curve15,y_curve15);

syms x
for i15 = 1:length(x_curve15)
    curve_15_1 = vpa(subs(curve15(1),x,(17.5:0.05:18)-x_curve15(1)));
    curve_15_2 = vpa(subs(curve15(2),x,(18:0.05:18.4)-x_curve15(2)));
end

plot((17.5:0.05:18),curve_15_1,(18:0.05:18.4),curve_15_2);


% Curve 16 

x_curve16 = [14.3 15 16.3 17 18 18.4];
y_curve16 = [1.8 1.3 0.9 1 1.55 2.75];
curve16 = MyFunction_NhiNguyen(x_curve16,y_curve16);

syms x
for i16 = 1:length(x_curve16)
    curve_16_1 = vpa(subs(curve16(1),x,(14.3:0.05:15)-x_curve16(1)));
    curve_16_2 = vpa(subs(curve16(2),x,(15:0.05:16.3)-x_curve16(2)));
    curve_16_3 = vpa(subs(curve16(3),x,(16.3:0.05:17)-x_curve16(3)));
    curve_16_4 = vpa(subs(curve16(4),x,(17:0.05:18)-x_curve16(4)));
    curve_16_5 = vpa(subs(curve16(5),x,(18:0.05:18.4)-x_curve16(5)));
end

plot((14.3:0.05:15),curve_16_1,(15:0.05:16.3),curve_16_2,(16.3:0.05:17),curve_16_3,(17:0.05:18),curve_16_4,(18:0.05:18.4),curve_16_5);


% Curve 17

x_curve17 = [10.6 11 12 12.8 14 14.3];
y_curve17 = [2 1.9 1.7 1.6 1.75 1.8];
curve17 = MyFunction_NhiNguyen(x_curve17,y_curve17);

syms x
for i17 = 1:length(x_curve17)
    curve_17_1 = vpa(subs(curve17(1),x,(10.6:0.05:11)-x_curve17(1)));
    curve_17_2 = vpa(subs(curve17(2),x,(11:0.05:12)-x_curve17(2)));
    curve_17_3 = vpa(subs(curve17(3),x,(12:0.05:12.8)-x_curve17(3)));
    curve_17_4 = vpa(subs(curve17(4),x,(12.8:0.05:14)-x_curve17(4)));
    curve_17_5 = vpa(subs(curve17(5),x,(14:0.05:14.3)-x_curve17(5)));
end

plot((10.6:0.05:11),curve_17_1,(11:0.05:12),curve_17_2,(12:0.05:12.8),curve_17_3,(12.8:0.05:14),curve_17_4,(14:0.05:14.3),curve_17_5);


% Curve 18

x_curve18 = [6.2 6.8 8 9 9.8 10.6];
y_curve18 = [2 1 0.5 0.6 1 2];
curve18 = MyFunction_NhiNguyen(x_curve18,y_curve18);

syms x
for i18 = 1:length(x_curve18)
    curve_18_1 = vpa(subs(curve18(1),x,(6.2:0.05:6.8)-x_curve18(1)));
    curve_18_2 = vpa(subs(curve18(2),x,(6.8:0.05:8)-x_curve18(2)));
    curve_18_3 = vpa(subs(curve18(3),x,(8:0.05:9)-x_curve18(3)));
    curve_18_4 = vpa(subs(curve18(4),x,(9:0.05:9.8)-x_curve18(4)));
    curve_18_5 = vpa(subs(curve18(5),x,(9.8:0.05:10.6)-x_curve18(5)));
end

plot((6.2:0.05:6.8),curve_18_1,(6.8:0.05:8),curve_18_2,(8:0.05:9),curve_18_3,(9:0.05:9.8),curve_18_4,(9.8:0.05:10.6),curve_18_5);


% Curve 19

x_curve19 = [6.2 6.5 7.25];
y_curve19 = [2 3.3 4];
curve19 = MyFunction_NhiNguyen(x_curve19,y_curve19);

syms x
for i19 = 1:length(x_curve19)
    curve_19_1 = vpa(subs(curve19(1),x,(6.2:0.05:6.5)-x_curve19(1)));
    curve_19_2 = vpa(subs(curve19(2),x,(6.5:0.05:7.25)-x_curve19(2)));
end

plot((6.2:0.05:6.5),curve_19_1,(6.5:0.05:7.25),curve_19_2);


% Curve 20

x_curve20 = [6 6.3 7.25];
y_curve20 = [8 6 4];
curve20 = MyFunction_NhiNguyen(x_curve20,y_curve20);

syms x
for i20 = 1:length(x_curve20)
    curve_20_1 = vpa(subs(curve20(1),x,(6:0.05:6.3)-x_curve20(1)));
    curve_20_2 = vpa(subs(curve20(2),x,(6.3:0.05:7.25)-x_curve20(2)));
end

plot((6:0.05:6.3),curve_20_1,(6.3:0.05:7.25),curve_20_2);


% Curve 21

x_curve21 = [6 6.25];
y_curve21 = [8 9.7];
curve21 = MyFunction_NhiNguyen(x_curve21,y_curve21);

syms x
for i21 = 1:length(x_curve21)
    curve_21_1 = vpa(subs(curve21(1),x,(6:0.05:6.25)-x_curve21(1)));
end

plot((6:0.05:6.25),curve_21_1);


% Curve 22

x_curve22 = [4.6 4.8 5.3 6.25];
y_curve22 = [11.8 10.9 10.3 9.7];
curve22 = MyFunction_NhiNguyen(x_curve22,y_curve22);

syms x
for i22 = 1:length(x_curve22)
    curve_22_1 = vpa(subs(curve22(1),x,(4.6:0.05:4.8)-x_curve22(1)));
    curve_22_2 = vpa(subs(curve22(2),x,(4.8:0.05:5.3)-x_curve22(2)));
    curve_22_3 = vpa(subs(curve22(3),x,(5.3:0.05:6.25)-x_curve22(3)));
end

plot((4.6:0.05:4.8),curve_22_1,(4.8:0.05:5.3),curve_22_2,(5.3:0.05:6.25),curve_22_3);


% Curve 23

x_curve23 = [4.6 5 6 6.5 7 7.9];
y_curve23 = [11.8 12.9 13.5 13.6 13.5 13];
curve23 = MyFunction_NhiNguyen(x_curve23,y_curve23);

syms x
for i23 = 1:length(x_curve23)
    curve_23_1 = vpa(subs(curve23(1),x,(4.6:0.05:5)-x_curve23(1)));
    curve_23_2 = vpa(subs(curve23(2),x,(5:0.05:6)-x_curve23(2)));
    curve_23_3 = vpa(subs(curve23(3),x,(6:0.05:6.5)-x_curve23(3)));
    curve_23_4 = vpa(subs(curve23(4),x,(6.5:0.05:7)-x_curve23(4)));
    curve_23_5 = vpa(subs(curve23(5),x,(7:0.05:7.9)-x_curve23(5)));
end

plot((4.6:0.05:5),curve_23_1,(5:0.05:6),curve_23_2,(6:0.05:6.5),curve_23_3,(6.5:0.05:7),curve_23_4,(7:0.05:7.9),curve_23_5);


% Curve 24

x_curve24 = [7.9 9];
y_curve24 = [13 13.7];
curve24 = MyFunction_NhiNguyen(x_curve24,y_curve24);

syms x
for i24 = 1:length(x_curve24)
    curve_24_1 = vpa(subs(curve24(1),x,(7.9:0.05:9)-x_curve24(1)));
end

plot((7.9:0.05:9),curve_24_1);

hold off