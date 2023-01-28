%% Problem 1
%% Adaptive Quadrature

f1_1 = @(x) (6*x.^3)/5 - (7*x)/2 + 35/2;
a1_1 = MyFinalAreaFunction_NhiNguyen(0,7-6.5,10^-5,f1_1,5);

f1_2 = @(x)  - (3*x.^3)/5 + (9*x.^2)/5 - (13*x)/5 + 159/10;
a1_2 =  MyFinalAreaFunction_NhiNguyen(0,8-7,10^-5,f1_2,10);

f1_3 = @(x)  29/2 - (4*x)/5;
a1_3 = MyFinalAreaFunction_NhiNguyen(0,9-8,10^-5,f1_2,10);

s1 = -(a1_1+a1_2+a1_3);

f2_1 = @(x) (223*x)/60 - (1250999896491903*x.^3)/2251799813685248 + 35/2;
a2_1 =  MyFinalAreaFunction_NhiNguyen(0,6.8-6.5,10^-5,f2_1,3);

f2_2 = @(x) (7505999378951407*x.^3)/9007199254740992 - (140737488355339*x.^2)/281474976710656 + (107*x)/30 + 93/5;
a2_2 =  MyFinalAreaFunction_NhiNguyen(0,7-6.8,10^-5,f2_2,2);

s2 = a2_1+a2_2;

f3_1 = @(x) 101/5 - (9*x)/5;
a3 =  MyFinalAreaFunction_NhiNguyen(0,7-6.5,10^-5,f3_1,5);

s3 = -a3;

f4_1 = @(x) (82563*x)/23288 - (7674447632361295*x.^3)/2251799813685248 + 101/5;
a4_1 =  MyFinalAreaFunction_NhiNguyen(0,6.9-6.5,10^-5,f4_1,4);

f4_2 = @(x) (43775*x.^3)/11644 - (4604668579416781*x.^2)/1125899906842624 + (22233*x)/11644 + 107/5;
a4_2 =  MyFinalAreaFunction_NhiNguyen(0,7.3-6.9,10^-5,f4_2,4);

f4_3 = @(x) - (6635596110191707*x.^3)/4503599627370496 + (7594312837806009*x.^2)/18014398509481984 + (1287*x)/2911 + 87/4;
a4_3 =  MyFinalAreaFunction_NhiNguyen(0,7.7-7.3,10^-5,f4_3,4);

f4_4 = @(x) (6092903459285311*x.^3)/4503599627370496 - (3032068561389277*x.^2)/2251799813685248 + (210*x)/2911 + 219/10;
a4_4 =  MyFinalAreaFunction_NhiNguyen(0,8.1-7.7,10^-5,f4_4,4);

f4_5 = @(x) -(4602613841087473*x.^3)/144115188075855872 + (1247347028363809*x.^2)/4503599627370496 - (8283*x)/23288 + 109/5;
a4_5 =  MyFinalAreaFunction_NhiNguyen(0,8.5-8.1,10^-5,f4_5,4);

f4_6 = @(x) - (689697091143609*x.^3)/562949953421312 + (8597992074584229*x.^2)/36028797018963968 - (435*x)/2911 + 217/10;
a4_6 =  MyFinalAreaFunction_NhiNguyen(0,8.9-8.5,10^-5,f4_6,4);

f4_7 = @(x) (5975*x.^3)/5822 - (3585*x.^2)/2911 - (12729*x)/23288 + 108/5;
a4_7 =  MyFinalAreaFunction_NhiNguyen(0,9.3-8.9,10^-5,f4_7,4);

s4 = a4_1 + a4_2+a4_3+a4_4+a4_5+a4_6+a4_7;

f5_1 = @(x) (1511*x)/2840 - (65*x.^3)/994 + 85/4;
a5_1 =  MyFinalAreaFunction_NhiNguyen(0,10-9.3,10^-5,f5_1,7);

f5_2 = @(x) (7916186387267269*x.^3)/2305843009213693952 - (39*x.^2)/284 + (619*x)/1420 + 108/5;
a5_2 =  MyFinalAreaFunction_NhiNguyen(0,12-10,10^-5,f5_2,20);

f5_3 = @(x) (221*x.^3)/5680 - (663*x.^2)/5680 - (41*x)/568 + 439/20;
a5_3 =  MyFinalAreaFunction_NhiNguyen(0,13-12,10^-5,f5_3,10);

s5 = a5_1 + a5_2+a5_3;

f6_1 = @(x) (4791141310596071*x)/4503599627370496 - (61904*x.^3)/87261 + 109/5;
a6_1 =  MyFinalAreaFunction_NhiNguyen(0,13.3-13,10^-5,f6_1,3);

f6_2 = @(x) (6323267763633565*x.^3)/36028797018963968 - (5750833664511489*x.^2)/9007199254740992 + (1964258130459673*x)/2251799813685248 + 221/10;
a6_2 =  MyFinalAreaFunction_NhiNguyen(0,15-13.3,10^-5,f6_2,17);

f6_3 = @(x) - (1215691653392661*x.^3)/1125899906842624 + (7464*x.^2)/29087 + (125617558760961*x)/562949953421312 + 113/5;
a6_3 =  MyFinalAreaFunction_NhiNguyen(0,16-15,10^-5,f6_3,10);

f6_4 = @(x) (8955088982434187*x.^3)/2251799813685248 - (839539592103205*x.^2)/281474976710656 - (5636013318251471*x)/2251799813685248 + 22;
a6_4 =  MyFinalAreaFunction_NhiNguyen(0,16.25-16,10^-5,f6_4,3);

s6 = a6_1 + a6_2+a6_3+a6_4;

f7_1 = @(x) (1300*x.^3)/99 - (17*x)/33 + 99/5;
a7_1 =  MyFinalAreaFunction_NhiNguyen(0,16-15.7,10^-5,f7_1,3);

f7_2 = @(x) - (520*x.^3)/33 + (130*x.^2)/11 + (100*x)/33 + 20;
a7_2 =  MyFinalAreaFunction_NhiNguyen(0,16.25-16,10^-5,f7_2,3);

s7 = -(a7_1 + a7_2);

f8_1 = @(x) 99/5 - (25*x.^3)/9 - (29*x)/12;
a8_1 =  MyFinalAreaFunction_NhiNguyen(0,16-15.7,10^-5,f8_1,3);

f8_2 = @(x) (5*x.^3)/3 - (5*x.^2)/2 - (19*x)/6 + 19;
a8_2 =  MyFinalAreaFunction_NhiNguyen(0,16.5-16,10^-5,f8_2,5);

s8 = a8_1 + a8_2;

f9_1 = @(x) (16*x.^3)/15 + (4*x)/5 + 57/4;
a9_1 =  MyFinalAreaFunction_NhiNguyen(0,16-15.25,10^-5,f9_1,8);

f9_2 = @(x) - (8*x.^3)/5 + (12*x.^2)/5 + (13*x)/5 + 153/10;
a9_2 =  MyFinalAreaFunction_NhiNguyen(0,16.5-16,10^-5,f9_2,5);

s9 = -(a9_1 + a9_2);

f10_1 = @(x) 57/4 - x;
a10_1 =  MyFinalAreaFunction_NhiNguyen(0,15.5-15.25,10^-5,f10_1,3);

f10_2 = @(x) 14 - x;
a10_2 =  MyFinalAreaFunction_NhiNguyen(0,16-15.5,10^-5,f10_2,5);

s10 = a10_1 + a10_2;

f11_1 = @(x) (6323*x)/10675 - (1807*x.^3)/42700 + 27/2;
a11_1 =  MyFinalAreaFunction_NhiNguyen(0,17-16,10^-5,f11_1,10);

f11_2 = @(x) (19871*x)/42700 - (5421*x.^2)/42700 - (3037*x.^3)/17080 + 281/20;
a11_2 =  MyFinalAreaFunction_NhiNguyen(0,17.8-17,10^-5,f11_2,8);

f11_3 = @(x) (4029670188019357*x.^3)/18014398509481984 - (23643*x.^2)/42700 - (713024237022859*x)/9007199254740992 + 57/4;
a11_3 =  MyFinalAreaFunction_NhiNguyen(0,18.5-17.8,10^-5,f11_3,7);

f11_4 = @(x) 14 - (1512269278688215*x.^2)/18014398509481984 - (7951*x.^3)/5978 - (44879*x)/85400;
a11_4 =  MyFinalAreaFunction_NhiNguyen(0,19-18.5,10^-5,f11_4,5);

f11_5 = @(x) (6242028258373361*x.^3)/4503599627370496 - (4681521193780021*x.^2)/2251799813685248 - (904658126720683*x)/562949953421312 + 271/20;
a11_5 =  MyFinalAreaFunction_NhiNguyen(0,19.5-19,10^-5,f11_5,5);

s11 = a11_1 + a11_2+a11_3+a11_4+a11_5;

f12_1 = @(x) - x.^3/10 + (17*x)/40 + 99/10;
a12_1 =  MyFinalAreaFunction_NhiNguyen(0,18-17.5,10^-5,f12_1,5);

f12_2 = @(x)  (7*x.^3)/10 - (3*x.^2)/20 + (7*x)/20 + 101/10;
a12_2 =  MyFinalAreaFunction_NhiNguyen(0,19-18,10^-5,f12_2,10);

f12_3 = @(x)  - (13*x.^3)/10 + (39*x.^2)/20 + (43*x)/20 + 11;
a12_3 =  MyFinalAreaFunction_NhiNguyen(0,19.5-19,10^-5,f12_3,5);

s12 = -(a12_1 + a12_2+a12_3);

f13_1 = @(x)  99/10 - (29*x)/5;
a13_1 =  MyFinalAreaFunction_NhiNguyen(0,18-17.5,10^-5,f13_1,5);

s13 = a13_1;

f14_1 = @(x)  5*x + 9/2;
a14_1 =  MyFinalAreaFunction_NhiNguyen(0,18-17.5,10^-5,f14_1,5);

s14 = -(a14_1);

f15_1 = @(x)  9/2 - (85*x.^3)/36 - (59*x)/144;
a15_1 =  MyFinalAreaFunction_NhiNguyen(0,18-17.5,10^-5,f15_1,5);

f15_2 = @(x)  (425*x.^3)/144 - (85*x.^2)/24 - (157*x)/72 + 4;
a15_2 =  MyFinalAreaFunction_NhiNguyen(0,18.4-18,10^-5,f15_2,4);

s15 = a15_1 + a15_2;

f16_1 = @(x) (6291722993865209*x.^3)/72057594037927936 - (213096305836271*x)/281474976710656 + 9/5;
a16_1 =  MyFinalAreaFunction_NhiNguyen(0,15-14.3,10^-5,f16_1,7);

f16_2 = @(x) (7048343578184631*x.^3)/144115188075855872 + (6606309143558463*x.^2)/36028797018963968 - (2831488843318971*x)/4503599627370496 + 13/10;
a16_2 =  MyFinalAreaFunction_NhiNguyen(0,16.3-15,10^-5,f16_2,13);

f16_3 = @(x) - (7904294287695995*x.^3)/18014398509481984 + (6739222066144241*x.^2)/18014398509481984 + (3458268512049273*x)/36028797018963968 + 9/10;
a16_3 =  MyFinalAreaFunction_NhiNguyen(0,17-16.3,10^-5,f16_3,7);

f16_4 = @(x) (631968205391217*x.^3)/562949953421312 - (4929897969008665*x.^2)/9007199254740992 - (227633727143261*x)/9007199254740992 + 1;
a16_4 =  MyFinalAreaFunction_NhiNguyen(0,18-17,10^-5,f16_4,10);

f16_5 = @(x)  - (661577497129423*x.^3)/281474976710656 + (3175571986221219*x.^2)/1125899906842624 + (5061761048404457*x)/2251799813685248 + 31/20;
a16_5 =  MyFinalAreaFunction_NhiNguyen(0,18.4-18,10^-5,f16_5,4);

s16 = -(a16_1 + a16_2+a16_3+a16_4+a16_5);

f17_1 = @(x)   (3130418917907785*x.^3)/72057594037927936 - (18169*x)/70710 + 2;
a17_1 =  MyFinalAreaFunction_NhiNguyen(0,11-10.6,10^-5,f17_1,4);

f17_2 = @(x)  - (907*x.^3)/56568 + (983*x.^2)/18856 - (8506332227875745*x)/36028797018963968 + 19/10;
a17_2 =  MyFinalAreaFunction_NhiNguyen(0,12-11,10^-5,f17_2,10);

f17_3 = @(x)  (5822165194979551*x.^3)/72057594037927936 + (580863083038059*x.^2)/144115188075855872 - (3241432553185779*x)/18014398509481984 + 17/10;
a17_3 =  MyFinalAreaFunction_NhiNguyen(0,12.8-12,10^-5,f17_3,8);

f17_4 = @(x)   - (4712966517132679*x.^3)/72057594037927936 + (7465*x.^2)/37712 - (330620642987977*x)/18014398509481984 + 8/5;
a17_4 =  MyFinalAreaFunction_NhiNguyen(0,14-12.8,10^-5,f17_4,12);

f17_5 = @(x)  (6006781004905917*x.^3)/144115188075855872 - (1061*x.^2)/28284 + (1568776162095355*x)/9007199254740992 + 7/4;
a17_5 =  MyFinalAreaFunction_NhiNguyen(0,14.3-14,10^-5,f17_5,3);

s17 = -(a17_1 + a17_2+a17_3+a17_4+a17_5);

f18_1 = @(x) (1733*x.^3)/3024 - (15733*x)/8400 + 2;
a18_1 =  MyFinalAreaFunction_NhiNguyen(0,6.8-6.2,10^-5,f18_1,6);

f18_2 = @(x) - (841*x.^3)/3024 + (1733*x.^2)/1680 - (5267*x)/4200 + 1;
a18_2 =  MyFinalAreaFunction_NhiNguyen(0,8-6.8,10^-5,f18_2,12);

f18_3 = @(x) (83*x.^3)/1680 + (17*x.^2)/560 + (17*x)/840 + 1/2;
a18_3 =  MyFinalAreaFunction_NhiNguyen(0,9-8,10^-5,f18_3,10);

f18_4 = @(x) (1075*x.^3)/5376 + (5*x.^2)/28 + (11*x)/48 + 3/5;
a18_4 =  MyFinalAreaFunction_NhiNguyen(0,9.8-9,10^-5,f18_4,8);

f18_5 = @(x)  - (1475*x.^3)/5376 + (295*x.^2)/448 + (151*x)/168 + 1;
a18_5 =  MyFinalAreaFunction_NhiNguyen(0,10.6-9.8,10^-5,f18_5,8);

s18 = -(a18_1 + a18_2+a18_3+a18_4+a18_5);

f19_1 = @(x)  (506*x)/105 - (340*x.^3)/63 + 2;
a19_1 =  MyFinalAreaFunction_NhiNguyen(0,6.5-6.2,10^-5,f19_1,3);

f19_2 = @(x) (136*x.^3)/63 - (34*x.^2)/7 + (353*x)/105 + 33/10;
a19_2 =  MyFinalAreaFunction_NhiNguyen(0,7.25-6.5,10^-5,f19_2,7);

s19 = a19_1 + a19_2;

f20_1 = @(x) (1040*x.^3)/171 - (2056*x)/285 + 8;
a20_1 =  MyFinalAreaFunction_NhiNguyen(0,6.3-6,10^-5,f20_1,3);

f20_2 = @(x) - (2080*x.^3)/1083 + (104*x.^2)/19 - (1588*x)/285 + 6;
a20_2 =  MyFinalAreaFunction_NhiNguyen(0,7.25-6.3,10^-5,f20_2,10);

s20 = -(a20_1 + a20_2);

f21_1 = @(x)(34*x)/5 + 8;
a21_1 =  MyFinalAreaFunction_NhiNguyen(0,6.25-6,10^-5,f21_1,3);

s21 = a21_1;

f22_1 = @(x)(29405*x.^3)/2413 - (5615361628213395*x)/1125899906842624 + 59/5;
a22_1 =  MyFinalAreaFunction_NhiNguyen(0,4.8-4.6,10^-5,f22_1,2);

f22_2 = @(x)  - (676*x.^3)/127 + (17643*x.^2)/2413 - (85061*x)/24130 + 109/10;
a22_2 =  MyFinalAreaFunction_NhiNguyen(0,5.3-4.8,10^-5,f22_2,5);

f22_3 = @(x)  (10820*x.^3)/45847 - (1623*x.^2)/2413 - (4961*x)/24130 + 103/10;
a22_3 =  MyFinalAreaFunction_NhiNguyen(0,6.25-5.3,10^-5,f22_3,10);

s22 = -(a22_1 + a22_2+a22_3);

f23_1 = @(x) (3471228834500635*x)/1125899906842624 - (2343775566771387*x.^3)/1125899906842624 + 59/5;
a23_1 =  MyFinalAreaFunction_NhiNguyen(0,5-4.6,10^-5,f23_1,4);

f23_2 = @(x)  (2283708123561747*x.^3)/2251799813685248 - (2812530680125667*x.^2)/1125899906842624 + (36659633788287*x)/17592186044416 + 129/10;
a23_2 =  MyFinalAreaFunction_NhiNguyen(0,6-5,10^-5,f23_2,10);

f23_3 = @(x) - (7297701081011411*x.^3)/9007199254740992 + (4904252041735627*x.^2)/9007199254740992 + (1173739100333231*x)/9007199254740992 + 27/2;
a23_3 =  MyFinalAreaFunction_NhiNguyen(0,6.5-6,10^-5,f23_3,5);

f23_4 = @(x) (18499*x.^3)/67734 - (7573*x.^2)/11289 + (151178832827575*x)/2251799813685248 + 68/5;
a23_4 =  MyFinalAreaFunction_NhiNguyen(0,7-6.5,10^-5,f23_4,5);

f23_5 = @(x) (871234049625175*x.^3)/9007199254740992 - (3931*x.^2)/15052 - (3592600425574431*x)/9007199254740992 + 27/2;
a23_5 =  MyFinalAreaFunction_NhiNguyen(0,7.9-7,10^-5,f23_5,9);

s23 = a23_1 + a23_2+a23_3+a23_4+a23_5;

f24_1 = @(x) (7*x)/11 + 13;
a24_1 =  MyFinalAreaFunction_NhiNguyen(0,9-7.9,10^-5,f24_1,11);

s24 = a24_1;

area_a_bear = s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+s18+s19+s20+s21+s22+s23+s24;

fprintf('Adaptive Quadrature area of bear: approximately %3.2f\n',area_a_bear)

%% Gaussian Quadrature

f1_1 = @(x)  (6*x.^3)/5 - (7*x)/2 + 35/2;
BB1_1= 7 - 6.5; %interval [0, BB]
N1_1= 5; 
ag1_1 = 0;
bg1_1 = BB1_1/N1_1;
sum1_1 = 0;    % initialization
for i = 1:N1_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg1_1-ag1_1)+ag1_1+bg1_1)/2;  % tansform t to x
    integration1_1 =  weights'*f1_1(x)*(bg1_1-ag1_1)/2;
    sum1_1 = sum1_1 + integration1_1;    % sum the approximation of each subinteval integration
    ag1_1 = bg1_1;
    bg1_1 = bg1_1+BB1_1/N1_1;   % move to the next interval
end

f1_2 = @(x)  - (3*x.^3)/5 + (9*x.^2)/5 - (13*x)/5 + 159/10;
BB1_2= 8 - 7; %interval [0, BB]
N1_2= 10; 
ag1_2 = 0;
bg1_2 = BB1_2/N1_2;
sum1_2 = 0;    % initialization
for i = 1:N1_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg1_2-ag1_2)+ag1_2+bg1_2)/2;  % tansform t to x
    integration1_2 =  weights'*f1_2(x)*(bg1_2-ag1_2)/2;
    sum1_2 = sum1_2 + integration1_2;    % sum the approximation of each subinteval integration
    ag1_2 = bg1_2;
    bg1_2 = bg1_2+BB1_2/N1_2;   % move to the next interval
end

f1_3 = @(x)  29/2 - (4*x)/5;
BB1_3= 9 - 8; %interval [0, BB]
N1_3= 10; 
ag1_3 = 0;
bg1_3 = BB1_3/N1_3;
sum1_3 = 0;    % initialization
for i = 1:N1_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg1_3-ag1_3)+ag1_3+bg1_3)/2;  % tansform t to x
    integration1_3 =  weights'*f1_3(x)*(bg1_3-ag1_3)/2;
    sum1_3 = sum1_3 + integration1_3;    % sum the approximation of each subinteval integration
    ag1_3 = bg1_3;
    bg1_3 = bg1_3+BB1_3/N1_3;   % move to the next interval
end

sum1 = -(sum1_1 + sum1_2 + sum1_3);

f2_1 = @(x) (223*x)/60 - (1250999896491903*x.^3)/2251799813685248 + 35/2;
BB2_1= 6.8 - 6.5; %interval [0, BB]
N2_1= 3; 
ag2_1 = 0;
bg2_1 = BB2_1/N2_1;
sum2_1 = 0;    % initialization
for i = 1:N2_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg2_1-ag2_1)+ag2_1+bg2_1)/2;  % tansform t to x
    integration2_1 =  weights'*f2_1(x)*(bg2_1-ag2_1)/2;
    sum2_1 = sum2_1 + integration2_1;    % sum the approximation of each subinteval integration
    ag2_1 = bg2_1;
    bg2_1 = bg2_1+BB2_1/N2_1;   % move to the next interval
end

f2_2 = @(x) (7505999378951407*x.^3)/9007199254740992 - (140737488355339*x.^2)/281474976710656 + (107*x)/30 + 93/5;
BB2_2= 7 - 6.8; %interval [0, BB]
N2_2= 2; 
ag2_2 = 0;
bg2_2 = BB2_2/N2_2;
sum2_2 = 0;    % initialization
for i = 1:N2_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg2_2-ag2_2)+ag2_2+bg2_2)/2;  % tansform t to x
    integration2_2 =  weights'*f2_2(x)*(bg2_2-ag2_2)/2;
    sum2_2 = sum2_2 + integration2_2;    % sum the approximation of each subinteval integration
    ag2_2 = bg2_2;
    bg2_2 = bg2_2+BB2_2/N2_2;   % move to the next interval
end

sum2 = sum2_1 + sum2_2;

f3_1 = @(x) 101/5 - (9*x)/5;
BB3_1= 7 - 6.5; %interval [0, BB]
N3_1= 5; 
ag3_1 = 0;
bg3_1 = BB3_1/N3_1;
sum3_1 = 0;    % initialization
for i = 1:N3_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg3_1-ag3_1)+ag3_1+bg3_1)/2;  % tansform t to x
    integration3_1 =  weights'*f3_1(x)*(bg3_1-ag3_1)/2;
    sum3_1 = sum3_1 + integration3_1;    % sum the approximation of each subinteval integration
    ag3_1 = bg3_1;
    bg3_1 = bg3_1+BB3_1/N3_1;   % move to the next interval
end

sum3 = -(sum3_1);

f4_1 = @(x) (82563*x)/23288 - (7674447632361295*x.^3)/2251799813685248 + 101/5;
BB4_1= 6.9-6.5; %interval [0, BB]
N4_1= 4; 
ag4_1 = 0;
bg4_1 = BB4_1/N4_1;
sum4_1 = 0;    % initialization
for i = 1:N4_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_1-ag4_1)+ag4_1+bg4_1)/2;  % tansform t to x
    integration1_1 =  weights'*f4_1(x)*(bg4_1-ag4_1)/2;
    sum4_1 = sum4_1 + integration1_1;    % sum the approximation of each subinteval integration
    ag4_1 = bg4_1;
    bg4_1 = bg4_1+BB4_1/N4_1;   % move to the next interval
end

f4_2 = @(x) (43775*x.^3)/11644 - (4604668579416781*x.^2)/1125899906842624 + (22233*x)/11644 + 107/5;
BB4_2= 7.3-6.9; %interval [0, BB]
N4_2= 4; 
ag4_2 = 0;
bg4_2 = BB4_2/N4_2;
sum4_2 = 0;    % initialization
for i = 1:N4_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_2-ag4_2)+ag4_2+bg4_2)/2;  % tansform t to x
    integration4_2 =  weights'*f4_2(x)*(bg4_2-ag4_2)/2;
    sum4_2 = sum4_2 + integration4_2;    % sum the approximation of each subinteval integration
    ag4_2 = bg4_2;
    bg4_2 = bg4_2+BB4_2/N4_2;   % move to the next interval
end

f4_3 = @(x) - (6635596110191707*x.^3)/4503599627370496 + (7594312837806009*x.^2)/18014398509481984 + (1287*x)/2911 + 87/4;
BB4_3= 7.7-7.3; %interval [0, BB]
N4_3= 4; 
ag4_3 = 0;
bg4_3 = BB4_3/N4_3;
sum4_3 = 0;    % initialization
for i = 1:N4_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_3-ag4_3)+ag4_3+bg4_3)/2;  % tansform t to x
    integration4_3 =  weights'*f4_3(x)*(bg4_3-ag4_3)/2;
    sum4_3 = sum4_3 + integration4_3;    % sum the approximation of each subinteval integration
    ag4_3 = bg4_3;
    bg4_3 = bg4_3+BB4_3/N4_3;   % move to the next interval
end

f4_4 = @(x) (6092903459285311*x.^3)/4503599627370496 - (3032068561389277*x.^2)/2251799813685248 + (210*x)/2911 + 219/10;
BB4_4= 8.1-7.7; %interval [0, BB]
N4_4= 4; 
ag4_4 = 0;
bg4_4 = BB4_4/N4_4;
sum4_4 = 0;    % initialization
for i = 1:N4_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_4-ag4_4)+ag4_4+bg4_4)/2;  % tansform t to x
    integration4_4 =  weights'*f4_4(x)*(bg4_4-ag4_4)/2;
    sum4_4 = sum4_4 + integration4_4;    % sum the approximation of each subinteval integration
    ag4_4 = bg4_4;
    bg4_4 = bg4_4+BB4_4/N4_4;   % move to the next interval
end

f4_5 = @(x) -(4602613841087473*x.^3)/144115188075855872 + (1247347028363809*x.^2)/4503599627370496 - (8283*x)/23288 + 109/5;
BB4_5= 8.5-8.1; %interval [0, BB]
N4_5= 4; 
ag4_5 = 0;
bg4_5 = BB4_5/N4_5;
sum4_5 = 0;    % initialization
for i = 1:N4_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_5-ag4_5)+ag4_5+bg4_5)/2;  % tansform t to x
    integration4_5 =  weights'*f4_5(x)*(bg4_5-ag4_5)/2;
    sum4_5 = sum4_5 + integration4_5;    % sum the approximation of each subinteval integration
    ag4_5 = bg4_5;
    bg4_5 = bg4_5+BB4_5/N4_5;   % move to the next interval
end

f4_6 = @(x) - (689697091143609*x.^3)/562949953421312 + (8597992074584229*x.^2)/36028797018963968 - (435*x)/2911 + 217/10;
BB4_6= 8.9-8.5; %interval [0, BB]
N4_6= 4; 
ag4_6 = 0;
bg4_6 = BB4_6/N4_6;
sum4_6 = 0;    % initialization
for i = 1:N4_6   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_6-ag4_6)+ag4_6+bg4_6)/2;  % tansform t to x
    integration4_6 =  weights'*f4_6(x)*(bg4_6-ag4_6)/2;
    sum4_6 = sum4_6 + integration4_6;    % sum the approximation of each subinteval integration
    ag4_6 = bg4_6;
    bg4_6 = bg4_6+BB4_6/N4_6;   % move to the next interval
end

f4_7 = @(x) (5975*x.^3)/5822 - (3585*x.^2)/2911 - (12729*x)/23288 + 108/5;
BB4_7= 9.3-8.9; %interval [0, BB]
N4_7= 4; 
ag4_7 = 0;
bg4_7 = BB4_7/N4_7;
sum4_7 = 0;    % initialization
for i = 1:N4_7   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg4_7-ag4_7)+ag4_7+bg4_7)/2;  % tansform t to x
    integration4_7 =  weights'*f4_7(x)*(bg4_7-ag4_7)/2;
    sum4_7 = sum4_7 + integration4_7;    % sum the approximation of each subinteval integration
    ag4_7 = bg4_7;
    bg4_7 = bg4_7+BB4_7/N4_7;   % move to the next interval
end

sum4 = sum4_1+ sum4_2+ sum4_3+ sum4_5+ sum4_6+ sum4_7;

f5_1 = @(x) (1511*x)/2840 - (65*x.^3)/994 + 85/4;
BB5_1= 10 -9.3; %interval [0, BB]
N5_1= 7; 
ag5_1 = 0;
bg5_1 = BB5_1/N5_1;
sum5_1 = 0;    % initialization
for i = 1:N5_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg5_1-ag5_1)+ag5_1+bg5_1)/2;  % tansform t to x
    integration5_1 =  weights'*f5_1(x)*(bg5_1-ag5_1)/2;
    sum5_1 = sum5_1 + integration5_1;    % sum the approximation of each subinteval integration
    ag5_1 = bg5_1;
    bg5_1 = bg5_1+BB5_1/N5_1;   % move to the next interval
end

f5_2 = @(x) (7916186387267269*x.^3)/2305843009213693952 - (39*x.^2)/284 + (619*x)/1420 + 108/5;
BB5_2= 12 -10; %interval [0, BB]
N5_2= 20; 
ag5_2 = 0;
bg5_2 = BB5_2/N5_2;
sum5_2 = 0;    % initialization
for i = 1:N5_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg5_2-ag5_2)+ag5_2+bg5_2)/2;  % tansform t to x
    integration5_2 =  weights'*f5_2(x)*(bg5_2-ag5_2)/2;
    sum5_2 = sum5_2 + integration5_2;    % sum the approximation of each subinteval integration
    ag5_2 = bg5_2;
    bg5_2 = bg5_2+BB5_2/N5_2;   % move to the next interval
end

f5_3 = @(x) (221*x.^3)/5680 - (663*x.^2)/5680 - (41*x)/568 + 439/20;
BB5_3= 13 -12; %interval [0, BB]
N5_3= 10; 
a5_3 = 0;
b5_3 = BB5_3/N5_3;
sum5_3 = 0;    % initialization
for i = 1:N5_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(b5_3-a5_3)+a5_3+b5_3)/2;  % tansform t to x
    integration5_3 =  weights'*f5_3(x)*(b5_3-a5_3)/2;
    sum5_3 = sum5_3 + integration5_3;    % sum the approximation of each subinteval integration
    a5_3 = b5_3;
    b5_3 = b5_3+BB5_3/N5_3;   % move to the next interval
end

sum5 = sum5_1 + sum5_2 + sum5_3;

f6_1 = @(x) (4791141310596071*x)/4503599627370496 - (61904*x.^3)/87261 + 109/5;
BB6_1= 13.3 -13; %interval [0, BB]
N6_1= 3; 
ag6_1 = 0;
bg6_1 = BB6_1/N6_1;
sum6_1 = 0;    % initialization
for i = 1:N6_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg6_1-ag6_1)+ag6_1+bg6_1)/2;  % tansform t to x
    integration6_1 =  weights'*f6_1(x)*(bg6_1-ag6_1)/2;
    sum6_1 = sum6_1 + integration6_1;    % sum the approximation of each subinteval integration
    ag6_1 = bg6_1;
    bg6_1 = bg6_1+BB6_1/N6_1;   % move to the next interval
end

f6_2 = @(x) (6323267763633565*x.^3)/36028797018963968 - (5750833664511489*x.^2)/9007199254740992 + (1964258130459673*x)/2251799813685248 + 221/10;
BB6_2= 15 -13.3; %interval [0, BB]
N6_2= 17; 
ag6_2 = 0;
bg6_2 = BB6_2/N6_2;
sum6_2 = 0;    % initialization
for i = 1:N6_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg6_2-ag6_2)+ag6_2+bg6_2)/2;  % tansform t to x
    integration6_2 =  weights'*f6_2(x)*(bg6_2-ag6_2)/2;
    sum6_2 = sum6_2 + integration6_2;    % sum the approximation of each subinteval integration
    ag6_2 = bg6_2;
    bg6_2 = bg6_2+BB6_2/N6_2;   % move to the next interval
end

f6_3 = @(x) - (1215691653392661*x.^3)/1125899906842624 + (7464*x.^2)/29087 + (125617558760961*x)/562949953421312 + 113/5;
BB6_3= 16 -15; %interval [0, BB]
N6_3= 10; 
ag6_3 = 0;
bg6_3 = BB6_3/N6_3;
sum6_3 = 0;    % initialization
for i = 1:N6_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg6_3-ag6_3)+ag6_3+bg6_3)/2;  % tansform t to x
    integration6_3 =  weights'*f6_3(x)*(bg6_3-ag6_3)/2;
    sum6_3 = sum6_3 + integration6_3;    % sum the approximation of each subinteval integration
    ag6_3 = bg6_3;
    bg6_3 = bg6_3+BB6_3/N6_3;   % move to the next interval
end

f6_4 = @(x) (8955088982434187*x.^3)/2251799813685248 - (839539592103205*x.^2)/281474976710656 - (5636013318251471*x)/2251799813685248 + 22;
BB6_4= 16.25 -16; %interval [0, BB]
N6_4= 3; 
ag6_4 = 0;
bg6_4 = BB6_4/N6_4;
sum6_4 = 0;    % initialization
for i = 1:N6_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg6_4-ag6_4)+ag6_4+bg6_4)/2;  % tansform t to x
    integration6_4 =  weights'*f6_4(x)*(bg6_4-ag6_4)/2;
    sum6_4 = sum6_4 + integration6_4;    % sum the approximation of each subinteval integration
    ag6_4 = bg6_4;
    bg6_4 = bg6_4+BB6_4/N6_4;   % move to the next interval
end

sum6 = sum6_1 + sum6_2 + sum6_3 + sum6_4;

f7_1 = @(x) (1300*x.^3)/99 - (17*x)/33 + 99/5;
BB7_1= 16 -15.7; %interval [0, BB]
N7_1= 3; 
ag7_1 = 0;
bg7_1 = BB7_1/N7_1;
sum7_1 = 0;    % initialization
for i = 1:N7_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg7_1-ag7_1)+ag7_1+bg7_1)/2;  % tansform t to x
    integration7_1 =  weights'*f7_1(x)*(bg7_1-ag7_1)/2;
    sum7_1 = sum7_1 + integration7_1;    % sum the approximation of each subinteval integration
    ag7_1 = bg7_1;
    bg7_1 = bg7_1+BB7_1/N7_1;   % move to the next interval
end

f7_2 = @(x) - (520*x.^3)/33 + (130*x.^2)/11 + (100*x)/33 + 20;
BB7_2= 16.25 -16; %interval [0, BB]
N7_2= 3; 
ag7_2 = 0;
bg7_2 = BB7_2/N7_2;
sum7_2 = 0;    % initialization
for i = 1:N7_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg7_2-ag7_2)+ag7_2+bg7_2)/2;  % tansform t to x
    integration7_2 =  weights'*f7_2(x)*(bg7_2-ag7_2)/2;
    sum7_2 = sum7_2 + integration7_2;    % sum the approximation of each subinteval integration
    ag7_2 = bg7_2;
    bg7_2 = bg7_2+BB7_2/N7_2;   % move to the next interval
end

sum7 = -(sum7_1 + sum7_2);

f8_1 = @(x) 99/5 - (25*x.^3)/9 - (29*x)/12;
BB8_1= 16 -15.7; %interval [0, BB]
N8_1= 3; 
ag8_1 = 0;
bg8_1 = BB8_1/N8_1;
sum8_1 = 0;    % initialization
for i = 1:N8_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg8_1-ag8_1)+ag8_1+bg8_1)/2;  % tansform t to x
    integration8_1 =  weights'*f8_1(x)*(bg8_1-ag8_1)/2;
    sum8_1 = sum8_1 + integration8_1;    % sum the approximation of each subinteval integration
    ag8_1 = bg8_1;
    bg8_1 = bg8_1+BB8_1/N8_1;   % move to the next interval
end

f8_2 = @(x) (5*x.^3)/3 - (5*x.^2)/2 - (19*x)/6 + 19;
BB8_2= 16.5 -16; %interval [0, BB]
N8_2= 5; 
ag8_2 = 0;
bg8_2 = BB8_2/N8_2;
sum8_2 = 0;    % initialization
for i = 1:N8_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg8_2-ag8_2)+ag8_2+bg8_2)/2;  % tansform t to x
    integration8_2 =  weights'*f8_2(x)*(bg8_2-ag8_2)/2;
    sum8_2 = sum8_2 + integration8_2;    % sum the approximation of each subinteval integration
    ag8_2 = bg8_2;
    bg8_2 = bg8_2+BB8_2/N8_2;   % move to the next interval
end

sum8 = sum8_1+sum8_2;

f9_1 = @(x) (16*x.^3)/15 + (4*x)/5 + 57/4;
BB9_1= 16 -15.25; %interval [0, BB]
N9_1= 8; 
ag9_1 = 0;
bg9_1 = BB9_1/N9_1;
sum9_1 = 0;    % initialization
for i = 1:N9_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg9_1-ag9_1)+ag9_1+bg9_1)/2;  % tansform t to x
    integration9_1 =  weights'*f9_1(x)*(bg9_1-ag9_1)/2;
    sum9_1 = sum9_1 + integration9_1;    % sum the approximation of each subinteval integration
    ag9_1 = bg9_1;
    bg9_1 = bg9_1+BB9_1/N9_1;   % move to the next interval
end

f9_2 = @(x) - (8*x.^3)/5 + (12*x.^2)/5 + (13*x)/5 + 153/10;
BB9_2= 16.5 -16; %interval [0, BB]
N9_2= 5; 
ag9_2 = 0;
bg9_2 = BB9_2/N9_2;
sum9_2 = 0;    % initialization
for i = 1:N9_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg9_2-ag9_2)+ag9_2+bg9_2)/2;  % tansform t to x
    integration9_2 =  weights'*f9_2(x)*(bg9_2-ag9_2)/2;
    sum9_2 = sum9_2 + integration9_2;    % sum the approximation of each subinteval integration
    ag9_2 = bg9_2;
    bg9_2 = bg9_2+BB9_2/N9_2;   % move to the next interval
end

sum9 = -(sum9_1+sum9_2);

f10_1 = @(x) 57/4 - x;
BB10_1= 15.5 -15.25; %interval [0, BB]
N10_1= 3; 
ag10_1 = 0;
bg10_1 = BB10_1/N10_1;
sum10_1 = 0;    % initialization
for i = 1:N10_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg10_1-ag10_1)+ag10_1+bg10_1)/2;  % tansform t to x
    integration10_1 =  weights'*f10_1(x)*(bg10_1-ag10_1)/2;
    sum10_1 = sum10_1 + integration10_1;    % sum the approximation of each subinteval integration
    ag10_1 = bg10_1;
    bg10_1 = bg10_1+BB10_1/N10_1;   % move to the next interval
end

f10_2 = @(x) 14 - x;
BB10_2= 16 -15.5; %interval [0, BB]
N10_2= 5; 
ag10_2 = 0;
bg10_2 = BB10_2/N10_2;
sum10_2 = 0;    % initialization
for i = 1:N10_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg10_2-ag10_2)+ag10_2+bg10_2)/2;  % tansform t to x
    integration10_2 =  weights'*f10_2(x)*(bg10_2-ag10_2)/2;
    sum10_2 = sum10_2 + integration10_2;    % sum the approximation of each subinteval integration
    ag10_2 = bg10_2;
    bg10_2 = bg10_2+BB10_2/N10_2;   % move to the next interval
end

sum10 = sum10_1+sum10_2;

f11_1 = @(x) (6323*x)/10675 - (1807*x.^3)/42700 + 27/2;
BB11_1= 17 -16; %interval [0, BB]
N11_1= 10; 
ag11_1 = 0;
bg11_1 = BB11_1/N11_1;
sum11_1 = 0;    % initialization
for i = 1:N11_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg11_1-ag11_1)+ag11_1+bg11_1)/2;  % tansform t to x
    integration11_1 =  weights'*f11_1(x)*(bg11_1-ag11_1)/2;
    sum11_1 = sum11_1 + integration11_1;    % sum the approximation of each subinteval integration
    ag11_1 = bg11_1;
    bg11_1 = bg11_1+BB11_1/N11_1;   % move to the next interval
end

f11_2 = @(x) (19871*x)/42700 - (5421*x.^2)/42700 - (3037*x.^3)/17080 + 281/20;
BB11_2= 17.8 -17; %interval [0, BB]
N11_2= 8; 
ag11_2 = 0;
bg11_2 = BB11_2/N11_2;
sum11_2 = 0;    % initialization
for i = 1:N11_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg11_2-ag11_2)+ag11_2+bg11_2)/2;  % tansform t to x
    integration11_2 =  weights'*f11_2(x)*(bg11_2-ag11_2)/2;
    sum11_2 = sum11_2 + integration11_2;    % sum the approximation of each subinteval integration
    ag11_2 = bg11_2;
    bg11_2 = bg11_2+BB11_2/N11_2;   % move to the next interval
end

f11_3 = @(x) (4029670188019357*x.^3)/18014398509481984 - (23643*x.^2)/42700 - (713024237022859*x)/9007199254740992 + 57/4;
BB11_3= 18.5 -17.8; %interval [0, BB]
N11_3= 7; 
ag11_3 = 0;
bg11_3 = BB11_3/N11_3;
sum11_3 = 0;    % initialization
for i = 1:N11_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg11_3-ag11_3)+ag11_3+bg11_3)/2;  % tansform t to x
    integration11_3 =  weights'*f11_3(x)*(bg11_3-ag11_3)/2;
    sum11_3 = sum11_3 + integration11_3;    % sum the approximation of each subinteval integration
    ag11_3 = bg11_3;
    bg11_3 = bg11_3+BB11_3/N11_3;   % move to the next interval
end

f11_4 = @(x) 14 - (1512269278688215*x.^2)/18014398509481984 - (7951*x.^3)/5978 - (44879*x)/85400;
BB11_4= 19 - 18.5; %interval [0, BB]
N11_4= 5; 
ag11_4 = 0;
bg11_4 = BB11_4/N11_4;
sum11_4 = 0;    % initialization
for i = 1:N11_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg11_4-ag11_4)+ag11_4+bg11_4)/2;  % tansform t to x
    integration11_4 =  weights'*f11_4(x)*(bg11_4-ag11_4)/2;
    sum11_4 = sum11_4 + integration11_4;    % sum the approximation of each subinteval integration
    ag11_4 = bg11_4;
    bg11_4 = bg11_4+BB11_4/N11_4;   % move to the next interval
end

f11_5 = @(x) (6242028258373361*x.^3)/4503599627370496 - (4681521193780021*x.^2)/2251799813685248 - (904658126720683*x)/562949953421312 + 271/20;
BB11_5= 19.5 - 19; %interval [0, BB]
N11_5= 5; 
ag11_5 = 0;
bg11_5 = BB11_5/N11_5;
sum11_5 = 0;    % initialization
for i = 1:N11_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg11_5-ag11_5)+ag11_5+bg11_5)/2;  % tansform t to x
    integration11_5 =  weights'*f11_5(x)*(bg11_5-ag11_5)/2;
    sum11_5 = sum11_5 + integration11_5;    % sum the approximation of each subinteval integration
    ag11_5 = bg11_5;
    bg11_5 = bg11_5+BB11_5/N11_5;   % move to the next interval
end

sum11 = sum11_1 + sum11_2 + sum11_3 + sum11_4 + sum11_5;

f12_1 = @(x) - x.^3/10 + (17*x)/40 + 99/10;
BB12_1= 18 - 17.5; %interval [0, BB]
N12_1= 5; 
ag12_1 = 0;
bg12_1 = BB12_1/N12_1;
sum12_1 = 0;    % initialization
for i = 1:N12_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg12_1-ag12_1)+ag12_1+bg12_1)/2;  % tansform t to x
    integration12_1 =  weights'*f12_1(x)*(bg12_1-ag12_1)/2;
    sum12_1 = sum12_1 + integration12_1;    % sum the approximation of each subinteval integration
    ag12_1 = bg12_1;
    bg12_1 = bg12_1+BB12_1/N12_1;   % move to the next interval
end

f12_2 = @(x)  (7*x.^3)/10 - (3*x.^2)/20 + (7*x)/20 + 101/10;
BB12_2= 19 - 18; %interval [0, BB]
N12_2= 10; 
ag12_2 = 0;
bg12_2 = BB12_2/N12_2;
sum12_2 = 0;    % initialization
for i = 1:N12_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg12_2-ag12_2)+ag12_2+bg12_2)/2;  % tansform t to x
    integration12_2 =  weights'*f12_2(x)*(bg12_2-ag12_2)/2;
    sum12_2 = sum12_2 + integration12_2;    % sum the approximation of each subinteval integration
    ag12_2 = bg12_2;
    bg12_2 = bg12_2+BB12_2/N12_2;   % move to the next interval
end

f12_3 = @(x)  - (13*x.^3)/10 + (39*x.^2)/20 + (43*x)/20 + 11;
BB12_3= 19.5 - 19; %interval [0, BB]
N12_3= 5; 
ag12_3 = 0;
bg12_3 = BB12_3/N12_3;
sum12_3 = 0;    % initialization
for i = 1:N12_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg12_3-ag12_3)+ag12_3+bg12_3)/2;  % tansform t to x
    integration12_3 =  weights'*f12_3(x)*(bg12_3-ag12_3)/2;
    sum12_3 = sum12_3 + integration12_3;    % sum the approximation of each subinteval integration
    ag12_3 = bg12_3;
    bg12_3 = bg12_3+BB12_3/N12_3;   % move to the next interval
end

sum12 = -(sum12_1+sum12_2+sum12_3);

f13_1 = @(x)  99/10 - (29*x)/5;
BB13_1= 18 - 17.5; %interval [0, BB]
N13_1= 5; 
ag13_1 = 0;
bg13_1 = BB13_1/N13_1;
sum13_1 = 0;    % initialization
for i = 1:N13_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg13_1-ag13_1)+ag13_1+bg13_1)/2;  % tansform t to x
    integration13_1 =  weights'*f13_1(x)*(bg13_1-ag13_1)/2;
    sum13_1 = sum13_1 + integration13_1;    % sum the approximation of each subinteval integration
    ag13_1 = bg13_1;
    bg13_1 = bg13_1+BB13_1/N13_1;   % move to the next interval
end

sum13 = sum13_1;

f14_1 = @(x)  5*x + 9/2;
BB14_1= 18 - 17.5; %interval [0, BB]
N14_1= 5; 
ag14_1 = 0;
bg14_1 = BB14_1/N14_1;
sum14_1 = 0;    % initialization
for i = 1:N14_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg14_1-ag14_1)+ag14_1+bg14_1)/2;  % tansform t to x
    integration14_1 =  weights'*f14_1(x)*(bg14_1-ag14_1)/2;
    sum14_1 = sum14_1 + integration14_1;    % sum the approximation of each subinteval integration
    ag14_1 = bg14_1;
    bg14_1 = bg14_1+BB14_1/N14_1;   % move to the next interval
end

sum14 = -(sum14_1);

f15_1 = @(x)  9/2 - (85*x.^3)/36 - (59*x)/144;
BB15_1= 18 - 17.5; %interval [0, BB]
N15_1= 5; 
ag15_1 = 0;
bg15_1 = BB15_1/N15_1;
sum15_1 = 0;    % initialization
for i = 1:N15_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg15_1-ag15_1)+ag15_1+bg15_1)/2;  % tansform t to x
    integration15_1 =  weights'*f15_1(x)*(bg15_1-ag15_1)/2;
    sum15_1 = sum15_1 + integration15_1;    % sum the approximation of each subinteval integration
    ag15_1 = bg15_1;
    bg15_1 = bg15_1+BB15_1/N15_1;   % move to the next interval
end

f15_2 = @(x)  (425*x.^3)/144 - (85*x.^2)/24 - (157*x)/72 + 4;
BB15_2= 18.4 - 18; %interval [0, BB]
N15_2= 4; 
ag15_2 = 0;
bg15_2 = BB15_2/N15_2;
sum15_2 = 0;    % initialization
for i = 1:N15_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg15_2-ag15_2)+ag15_2+bg15_2)/2;  % tansform t to x
    integration15_2 =  weights'*f15_2(x)*(bg15_2-ag15_2)/2;
    sum15_2 = sum15_2 + integration15_2;    % sum the approximation of each subinteval integration
    ag15_2 = bg15_2;
    bg15_2 = bg15_2+BB15_2/N15_2;   % move to the next interval
end

sum15 = sum15_1+sum15_2;

f16_1 = @(x)  (6291722993865209*x.^3)/72057594037927936 - (213096305836271*x)/281474976710656 + 9/5;
BB16_1= 15 - 14.3; %interval [0, BB]
N16_1= 7; 
ag16_1 = 0;
bg16_1 = BB16_1/N16_1;
sum16_1 = 0;    % initialization
for i = 1:N16_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg16_1-ag16_1)+ag16_1+bg16_1)/2;  % tansform t to x
    integration16_1 =  weights'*f16_1(x)*(bg16_1-ag16_1)/2;
    sum16_1 = sum16_1 + integration16_1;    % sum the approximation of each subinteval integration
    ag16_1 = bg16_1;
    bg16_1 = bg16_1+BB16_1/N16_1;   % move to the next interval
end

f16_2 = @(x)  (7048343578184631*x.^3)/144115188075855872 + (6606309143558463*x.^2)/36028797018963968 - (2831488843318971*x)/4503599627370496 + 13/10;
BB16_2= 16.3 - 15; %interval [0, BB]
N16_2= 13; 
ag16_2 = 0;
bg16_2 = BB16_2/N16_2;
sum16_2 = 0;    % initialization
for i = 1:N16_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg16_2-ag16_2)+ag16_2+bg16_2)/2;  % tansform t to x
    integration16_2 =  weights'*f16_2(x)*(bg16_2-ag16_2)/2;
    sum16_2 = sum16_2 + integration16_2;    % sum the approximation of each subinteval integration
    ag16_2 = bg16_2;
    bg16_2 = bg16_2+BB16_2/N16_2;   % move to the next interval
end

f16_3 = @(x) - (7904294287695995*x.^3)/18014398509481984 + (6739222066144241*x.^2)/18014398509481984 + (3458268512049273*x)/36028797018963968 + 9/10;
BB16_3= 17 - 16.3; %interval [0, BB]
N16_3= 7; 
ag16_3 = 0;
bg16_3 = BB16_3/N16_3;
sum16_3 = 0;    % initialization
for i = 1:N16_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg16_3-ag16_3)+ag16_3+bg16_3)/2;  % tansform t to x
    integration16_3 =  weights'*f16_3(x)*(bg16_3-ag16_3)/2;
    sum16_3 = sum16_3 + integration16_3;    % sum the approximation of each subinteval integration
    ag16_3 = bg16_3;
    bg16_3 = bg16_3+BB16_3/N16_3;   % move to the next interval
end

f16_4 = @(x) (631968205391217*x.^3)/562949953421312 - (4929897969008665*x.^2)/9007199254740992 - (227633727143261*x)/9007199254740992 + 1;
BB16_4= 18 - 17; %interval [0, BB]
N16_4= 10; 
ag16_4 = 0;
bg16_4 = BB16_4/N16_4;
sum16_4 = 0;    % initialization
for i = 1:N16_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg16_4-ag16_4)+ag16_4+bg16_4)/2;  % tansform t to x
    integration16_4 =  weights'*f16_4(x)*(bg16_4-ag16_4)/2;
    sum16_4 = sum16_4 + integration16_4;    % sum the approximation of each subinteval integration
    ag16_4 = bg16_4;
    bg16_4 = bg16_4+BB16_4/N16_4;   % move to the next interval
end

f16_5 = @(x)  - (661577497129423*x.^3)/281474976710656 + (3175571986221219*x.^2)/1125899906842624 + (5061761048404457*x)/2251799813685248 + 31/20;
BB16_5= 18.4 - 18; %interval [0, BB]
N16_5= 4; 
ag16_5 = 0;
bg16_5 = BB16_5/N16_5;
sum16_5 = 0;    % initialization
for i = 1:N16_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg16_5-ag16_5)+ag16_5+bg16_5)/2;  % tansform t to x
    integration16_5 =  weights'*f16_5(x)*(bg16_5-ag16_5)/2;
    sum16_5 = sum16_5 + integration16_5;    % sum the approximation of each subinteval integration
    ag16_5 = bg16_5;
    bg16_5 = bg16_5+BB16_5/N16_5;   % move to the next interval
end

sum16 = -(sum16_1+sum16_2+sum16_3+sum16_4+sum16_5);

f17_1 = @(x)   (3130418917907785*x.^3)/72057594037927936 - (18169*x)/70710 + 2;
BB17_1= 11 - 10.6; %interval [0, BB]
N17_1= 4; 
ag17_1 = 0;
bg17_1 = BB17_1/N17_1;
sum17_1 = 0;    % initialization
for i = 1:N17_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg17_1-ag17_1)+ag17_1+bg17_1)/2;  % tansform t to x
    integration17_1 =  weights'*f17_1(x)*(bg17_1-ag17_1)/2;
    sum17_1 = sum17_1 + integration17_1;    % sum the approximation of each subinteval integration
    ag17_1 = bg17_1;
    bg17_1 = bg17_1+BB17_1/N17_1;   % move to the next interval
end

f17_2 = @(x)  - (907*x.^3)/56568 + (983*x.^2)/18856 - (8506332227875745*x)/36028797018963968 + 19/10;
BB17_2= 12 - 11; %interval [0, BB]
N17_2= 10; 
ag17_2 = 0;
bg17_2 = BB17_2/N17_2;
sum17_2 = 0;    % initialization
for i = 1:N17_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg17_2-ag17_2)+ag17_2+bg17_2)/2;  % tansform t to x
    integration17_2 =  weights'*f17_2(x)*(bg17_2-ag17_2)/2;
    sum17_2 = sum17_2 + integration17_2;    % sum the approximation of each subinteval integration
    ag17_2 = bg17_2;
    bg17_2 = bg17_2+BB17_2/N17_2;   % move to the next interval
end

f17_3 = @(x)  (5822165194979551*x.^3)/72057594037927936 + (580863083038059*x.^2)/144115188075855872 - (3241432553185779*x)/18014398509481984 + 17/10;
BB17_3= 12.8 - 12; %interval [0, BB]
N17_3= 8; 
ag17_3 = 0;
bg17_3 = BB17_3/N17_3;
sum17_3 = 0;    % initialization
for i = 1:N17_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg17_3-ag17_3)+ag17_3+bg17_3)/2;  % tansform t to x
    integration17_3 =  weights'*f17_3(x)*(bg17_3-ag17_3)/2;
    sum17_3 = sum17_3 + integration17_3;    % sum the approximation of each subinteval integration
    ag17_3 = bg17_3;
    bg17_3 = bg17_3+BB17_3/N17_3;   % move to the next interval
end

f17_4 = @(x)   - (4712966517132679*x.^3)/72057594037927936 + (7465*x.^2)/37712 - (330620642987977*x)/18014398509481984 + 8/5;
BB17_4= 14 - 12.8; %interval [0, BB]
N17_4= 12; 
ag17_4 = 0;
bg17_4 = BB17_4/N17_4;
sum17_4 = 0;    % initialization
for i = 1:N17_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg17_4-ag17_4)+ag17_4+bg17_4)/2;  % tansform t to x
    integration17_4 =  weights'*f17_4(x)*(bg17_4-ag17_4)/2;
    sum17_4 = sum17_4 + integration17_4;    % sum the approximation of each subinteval integration
    ag17_4 = bg17_4;
    bg17_4 = bg17_4+BB17_4/N17_4;   % move to the next interval
end

f17_5 = @(x)  (6006781004905917*x.^3)/144115188075855872 - (1061*x.^2)/28284 + (1568776162095355*x)/9007199254740992 + 7/4;
BB17_5= 14.3 - 14; %interval [0, BB]
N17_5= 3; 
ag17_5 = 0;
bg17_5 = BB17_5/N17_5;
sum17_5 = 0;    % initialization
for i = 1:N17_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg17_5-ag17_5)+ag17_5+bg17_5)/2;  % tansform t to x
    integration17_5 =  weights'*f17_5(x)*(bg17_5-ag17_5)/2;
    sum17_5 = sum17_5 + integration17_5;    % sum the approximation of each subinteval integration
    ag17_5 = bg17_5;
    bg17_5 = bg17_5+BB17_5/N17_5;   % move to the next interval
end

sum17 = -(sum17_1+sum17_2+sum17_3+sum17_4+sum17_5);

f18_1 = @(x) (1733*x.^3)/3024 - (15733*x)/8400 + 2;
BB18_1= 6.8 - 6.2; %interval [0, BB]
N18_1= 6; 
ag18_1 = 0;
bg18_1 = BB18_1/N18_1;
sum18_1 = 0;    % initialization
for i = 1:N18_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg18_1-ag18_1)+ag18_1+bg18_1)/2;  % tansform t to x
    integration18_1 =  weights'*f18_1(x)*(bg18_1-ag18_1)/2;
    sum18_1 = sum18_1 + integration18_1;    % sum the approximation of each subinteval integration
    ag18_1 = bg18_1;
    bg18_1 = bg18_1+BB18_1/N18_1;   % move to the next interval
end

f18_2 = @(x) - (841*x.^3)/3024 + (1733*x.^2)/1680 - (5267*x)/4200 + 1;
BB18_2= 8 - 6.8; %interval [0, BB]
N18_2= 12; 
ag18_2 = 0;
bg18_2 = BB18_2/N18_2;
sum18_2 = 0;    % initialization
for i = 1:N18_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg18_2-ag18_2)+ag18_2+bg18_2)/2;  % tansform t to x
    integration18_2 =  weights'*f18_2(x)*(bg18_2-ag18_2)/2;
    sum18_2 = sum18_2 + integration18_2;    % sum the approximation of each subinteval integration
    ag18_2 = bg18_2;
    bg18_2 = bg18_2+BB18_2/N18_2;   % move to the next interval
end

f18_3 = @(x) (83*x.^3)/1680 + (17*x.^2)/560 + (17*x)/840 + 1/2;
BB18_3= 9 - 8; %interval [0, BB]
N18_3= 10; 
ag18_3 = 0;
bg18_3 = BB18_3/N18_3;
sum18_3 = 0;    % initialization
for i = 1:N18_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg18_3-ag18_3)+ag18_3+bg18_3)/2;  % tansform t to x
    integration18_3 =  weights'*f18_3(x)*(bg18_3-ag18_3)/2;
    sum18_3 = sum18_3 + integration18_3;    % sum the approximation of each subinteval integration
    ag18_3 = bg18_3;
    bg18_3 = bg18_3+BB18_3/N18_3;   % move to the next interval
end

f18_4 = @(x) (1075*x.^3)/5376 + (5*x.^2)/28 + (11*x)/48 + 3/5;
BB18_4= 9.8 - 9; %interval [0, BB]
N18_4= 8; 
ag18_4 = 0;
bg18_4 = BB18_4/N18_4;
sum18_4 = 0;    % initialization
for i = 1:N18_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg18_4-ag18_4)+ag18_4+bg18_4)/2;  % tansform t to x
    integration18_4 =  weights'*f18_4(x)*(bg18_4-ag18_4)/2;
    sum18_4 = sum18_4 + integration18_4;    % sum the approximation of each subinteval integration
    ag18_4 = bg18_4;
    bg18_4 = bg18_4+BB18_4/N18_4;   % move to the next interval
end

f18_5 = @(x)  - (1475*x.^3)/5376 + (295*x.^2)/448 + (151*x)/168 + 1;
BB18_5= 10.6 - 9.8; %interval [0, BB]
N18_5= 8; 
ag18_5 = 0;
bg18_5 = BB18_5/N18_5;
sum18_5 = 0;    % initialization
for i = 1:N18_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg18_5-ag18_5)+ag18_5+bg18_5)/2;  % tansform t to x
    integration18_5 =  weights'*f18_5(x)*(bg18_5-ag18_5)/2;
    sum18_5 = sum18_5 + integration18_5;    % sum the approximation of each subinteval integration
    ag18_5 = bg18_5;
    bg18_5 = bg18_5+BB18_5/N18_5;   % move to the next interval
end

sum18 = -(sum18_1+sum18_2+sum18_3+sum18_4+sum18_5);

f19_1 = @(x)  (506*x)/105 - (340*x.^3)/63 + 2;
BB19_1= 6.5 - 6.2; %interval [0, BB]
N19_1= 3; 
ag19_1 = 0;
bg19_1 = BB19_1/N19_1;
sum19_1 = 0;    % initialization
for i = 1:N19_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg19_1-ag19_1)+ag19_1+bg19_1)/2;  % tansform t to x
    integration19_1 =  weights'*f19_1(x)*(bg19_1-ag19_1)/2;
    sum19_1 = sum19_1 + integration19_1;    % sum the approximation of each subinteval integration
    ag19_1 = bg19_1;
    bg19_1 = bg19_1+BB19_1/N19_1;   % move to the next interval
end

f19_2 = @(x) (136*x.^3)/63 - (34*x.^2)/7 + (353*x)/105 + 33/10;
BB19_2= 7.25 - 6.5; %interval [0, BB]
N19_2= 7; 
ag19_2 = 0;
bg19_2 = BB19_2/N19_2;
sum19_2 = 0;    % initialization
for i = 1:N19_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg19_2-ag19_2)+ag19_2+bg19_2)/2;  % tansform t to x
    integration19_2 =  weights'*f19_2(x)*(bg19_2-ag19_2)/2;
    sum19_2 = sum19_2 + integration19_2;    % sum the approximation of each subinteval integration
    ag19_2 = bg19_2;
    bg19_2 = bg19_2+BB19_2/N19_2;   % move to the next interval
end

sum19 = sum19_1+sum19_2;

f20_1 = @(x) (1040*x.^3)/171 - (2056*x)/285 + 8;
BB20_1= 6.3 - 6; %interval [0, BB]
N20_1= 3; 
ag20_1 = 0;
bg20_1 = BB20_1/N20_1;
sum20_1 = 0;    % initialization
for i = 1:N20_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg20_1-ag20_1)+ag20_1+bg20_1)/2;  % tansform t to x
    integration20_1 =  weights'*f20_1(x)*(bg20_1-ag20_1)/2;
    sum20_1 = sum20_1 + integration20_1;    % sum the approximation of each subinteval integration
    ag20_1 = bg20_1;
    bg20_1 = bg20_1+BB20_1/N20_1;   % move to the next interval
end

f20_2 = @(x) - (2080*x.^3)/1083 + (104*x.^2)/19 - (1588*x)/285 + 6;
BB20_2= 7.25 - 6.3; %interval [0, BB]
N20_2= 10; 
ag20_2 = 0;
bg20_2 = BB20_2/N20_2;
sum20_2 = 0;    % initialization
for i = 1:N20_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg20_2-ag20_2)+ag20_2+bg20_2)/2;  % tansform t to x
    integration20_2 =  weights'*f20_2(x)*(bg20_2-ag20_2)/2;
    sum20_2 = sum20_2 + integration20_2;    % sum the approximation of each subinteval integration
    ag20_2 = bg20_2;
    bg20_2 = bg20_2+BB20_2/N20_2;   % move to the next interval
end

sum20 = -(sum20_1+sum20_2);

f21_1 = @(x)(34*x)/5 + 8;
BB21_1= 6.25 - 6; %interval [0, BB]
N21_1= 3; 
ag21_1 = 0;
bg21_1 = BB21_1/N21_1;
sum21_1 = 0;    % initialization
for i = 1:N21_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg21_1-ag21_1)+ag21_1+bg21_1)/2;  % tansform t to x
    integration21_1 =  weights'*f21_1(x)*(bg21_1-ag21_1)/2;
    sum21_1 = sum21_1 + integration21_1;    % sum the approximation of each subinteval integration
    ag21_1 = bg21_1;
    bg21_1 = bg21_1+BB21_1/N21_1;   % move to the next interval
end

sum21 = sum21_1;

f22_1 = @(x)(29405*x.^3)/2413 - (5615361628213395*x)/1125899906842624 + 59/5;
BB22_1= 4.8 - 4.6; %interval [0, BB]
N22_1= 2; 
ag22_1 = 0;
bg22_1 = BB22_1/N22_1;
sum22_1 = 0;    % initialization
for i = 1:N22_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg22_1-ag22_1)+ag22_1+bg22_1)/2;  % tansform t to x
    integration22_1 =  weights'*f22_1(x)*(bg22_1-ag22_1)/2;
    sum22_1 = sum22_1 + integration22_1;    % sum the approximation of each subinteval integration
    ag22_1 = bg22_1;
    bg22_1 = bg22_1+BB22_1/N22_1;   % move to the next interval
end

f22_2 = @(x)  - (676*x.^3)/127 + (17643*x.^2)/2413 - (85061*x)/24130 + 109/10;
BB22_2= 5.3 - 4.8; %interval [0, BB]
N22_2= 5; 
ag22_2 = 0;
bg22_2 = BB22_2/N22_2;
sum22_2 = 0;    % initialization
for i = 1:N22_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg22_2-ag22_2)+ag22_2+bg22_2)/2;  % tansform t to x
    integration22_2 =  weights'*f22_2(x)*(bg22_2-ag22_2)/2;
    sum22_2 = sum22_2 + integration22_2;    % sum the approximation of each subinteval integration
    ag22_2 = bg22_2;
    bg22_2 = bg22_2+BB22_2/N22_2;   % move to the next interval
end

f22_3 = @(x)  (10820*x.^3)/45847 - (1623*x.^2)/2413 - (4961*x)/24130 + 103/10;
BB22_3= 6.25 - 5.3; %interval [0, BB]
N22_3= 10; 
ag22_3 = 0;
bg22_3 = BB22_3/N22_3;
sum22_3 = 0;    % initialization
for i = 1:N22_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg22_3-ag22_3)+ag22_3+bg22_3)/2;  % tansform t to x
    integration22_3 =  weights'*f22_3(x)*(bg22_3-ag22_3)/2;
    sum22_3 = sum22_3 + integration22_3;    % sum the approximation of each subinteval integration
    ag22_3 = bg22_3;
    bg22_3 = bg22_3+BB22_3/N22_3;   % move to the next interval
end

sum22 = -(sum22_1+sum22_2+sum22_3);

f23_1 = @(x) (3471228834500635*x)/1125899906842624 - (2343775566771387*x.^3)/1125899906842624 + 59/5;
BB23_1= 5 - 4.6; %interval [0, BB]
N23_1= 4; 
ag23_1 = 0;
bg23_1 = BB23_1/N23_1;
sum23_1 = 0;    % initialization
for i = 1:N23_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg23_1-ag23_1)+ag23_1+bg23_1)/2;  % tansform t to x
    integration23_1 =  weights'*f23_1(x)*(bg23_1-ag23_1)/2;
    sum23_1 = sum23_1 + integration23_1;    % sum the approximation of each subinteval integration
    ag23_1 = bg23_1;
    bg23_1 = bg23_1+BB23_1/N23_1;   % move to the next interval
end

f23_2 = @(x)  (2283708123561747*x.^3)/2251799813685248 - (2812530680125667*x.^2)/1125899906842624 + (36659633788287*x)/17592186044416 + 129/10;
BB23_2= 6 - 5; %interval [0, BB]
N23_2= 10; 
ag23_2 = 0;
bg23_2 = BB23_2/N23_2;
sum23_2 = 0;    % initialization
for i = 1:N23_2   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg23_2-ag23_2)+ag23_2+bg23_2)/2;  % tansform t to x
    integration23_2 =  weights'*f23_2(x)*(bg23_2-ag23_2)/2;
    sum23_2 = sum23_2 + integration23_2;    % sum the approximation of each subinteval integration
    ag23_2 = bg23_2;
    bg23_2 = bg23_2+BB23_2/N23_2;   % move to the next interval
end

f23_3 = @(x) - (7297701081011411*x.^3)/9007199254740992 + (4904252041735627*x.^2)/9007199254740992 + (1173739100333231*x)/9007199254740992 + 27/2;
BB23_3= 6.5 - 6; %interval [0, BB]
N23_3= 5; 
ag23_3 = 0;
bg23_3 = BB23_3/N23_3;
sum23_3 = 0;    % initialization
for i = 1:N23_3   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg23_3-ag23_3)+ag23_3+bg23_3)/2;  % tansform t to x
    integration23_3 =  weights'*f23_3(x)*(bg23_3-ag23_3)/2;
    sum23_3 = sum23_3 + integration23_3;    % sum the approximation of each subinteval integration
    ag23_3 = bg23_3;
    bg23_3 = bg23_3+BB23_3/N23_3;   % move to the next interval
end

f23_4 = @(x) (18499*x.^3)/67734 - (7573*x.^2)/11289 + (151178832827575*x)/2251799813685248 + 68/5;
BB23_4= 7 - 6.5; %interval [0, BB]
N23_4= 5; 
ag23_4 = 0;
bg23_4 = BB23_4/N23_4;
sum23_4 = 0;    % initialization
for i = 1:N23_4   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg23_4-ag23_4)+ag23_4+bg23_4)/2;  % tansform t to x
    integration23_4 =  weights'*f23_4(x)*(bg23_4-ag23_4)/2;
    sum23_4 = sum23_4 + integration23_4;    % sum the approximation of each subinteval integration
    ag23_4 = bg23_4;
    bg23_4 = bg23_4+BB23_4/N23_4;   % move to the next interval
end

f23_5 = @(x) (871234049625175*x.^3)/9007199254740992 - (3931*x.^2)/15052 - (3592600425574431*x)/9007199254740992 + 27/2;
BB23_5= 7.9 - 7; %interval [0, BB]
N23_5= 9; 
ag23_5 = 0;
bg23_5 = BB23_5/N23_5;
sum23_5 = 0;    % initialization
for i = 1:N23_5   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg23_5-ag23_5)+ag23_5+bg23_5)/2;  % tansform t to x
    integration23_5 =  weights'*f23_5(x)*(bg23_5-ag23_5)/2;
    sum23_5 = sum23_5 + integration23_5;    % sum the approximation of each subinteval integration
    ag23_5 = bg23_5;
    bg23_5 = bg23_5+BB23_5/N23_5;   % move to the next interval
end

sum23 = sum23_1+sum23_2+sum23_3+sum23_4+sum23_5;

f24_1 = @(x) (7*x)/11 + 13;
BB24_1= 9 - 7.9; %interval [0, BB]
N24_1= 11; 
ag24_1 = 0;
bg24_1 = BB24_1/N24_1;
sum24_1 = 0;    % initialization
for i = 1:N24_1   % we have N subintervals in total
    t = [0; (-1/3)*sqrt(5-2*sqrt(10/7)); (1/3)*sqrt(5-2*sqrt(10/7)); 
        (-1/3)*sqrt(5+2*sqrt(10/7)); (1/3)*sqrt(5+2*sqrt(10/7))];     % t for Gauss-Legendre when n = 5
    weights = [128/225; (322+13*sqrt(70))/900; (322+13*sqrt(70))/900; 
                        (322-13*sqrt(70))/900; (322-13*sqrt(70))/900];% weight for Gauss-Legendre when n = 5 
    x = (t*(bg24_1-ag24_1)+ag24_1+bg24_1)/2;  % tansform t to x
    integration24_1 =  weights'*f24_1(x)*(bg24_1-ag24_1)/2;
    sum24_1 = sum24_1 + integration24_1;    % sum the approximation of each subinteval integration
    ag24_1 = bg24_1;
    bg24_1 = bg24_1+BB24_1/N24_1;   % move to the next interval
end

sum24 = sum24_1;

area_bear = sum1+sum2+sum3+sum4+sum5+sum6+sum7+sum8+sum9+sum10+sum11+sum12+sum13+sum14+sum15+sum16+sum17+sum18+sum19+sum20+sum21+sum22+sum23+sum24;

fprintf('Gaussian Quadrature area of bear: approximately %3.2f\n',area_bear)