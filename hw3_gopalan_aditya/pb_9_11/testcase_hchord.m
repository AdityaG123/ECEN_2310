clc
close all
clear all

cmaj = [0 3; 0 7; 0 10];
cmin = [0 3; 0 6; 0 10];
fund = [0.5 0.25 0.25];
fund2 = [0.7 0.2 0.1];
hchord(cmaj, 4, fund);
pause
hchord(cmaj, 4, fund2);
pause
hchord(cmin, 4, fund);
pause
hchord(cmin, 4, fund2);
pause