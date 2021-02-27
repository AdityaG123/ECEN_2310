% Aditya Gopalan ECEN 2310 Homework #2
% Exercise 9.5

close all

sampleTimes = (0: 8191)/8192;
midA = tone(1,440);
length(sampleTimes)
length(midA)
plot(sampleTimes(1:10*ceil(8192/440)),midA(1:10*ceil(8192/440)))