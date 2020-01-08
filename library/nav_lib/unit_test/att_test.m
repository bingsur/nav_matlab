
%%
addpath('../')
clear;
clc;

%% att test
%Principles of GNSS, Inertial, and Multisensor Integrated Navigation Systems, 2nd Edition, by Paul D. Groves

%Example 2.1(a)
EULn2b = deg2rad([-30 30 45]);
Cn2b = ch_eul2m(EULn2b);
Cb2n = Cn2b';

Qn2b = ch_eul2q(EULn2b);


%% Example2.1(b)
Cb2n = [0.612372 -0.78915 -0.04737; 0.612372 0.435596 0.65974; -0.5 -0.43301 0.75];
Cb2n * Cn2b;
EULn2b = ch_m2eul(Cn2b);
Qn2b = ch_m2q(Cn2b);

%% Example2.1(c)
Qn2b = [0.836356 -0.32664 0.135299 0.418937];
Cn2b = ch_q2m(Qn2b);
EULn2b = ch_q2eul(Qn2b);

Qb2n = quatconj(Qn2b);

test_v = [0 0 1]';



  