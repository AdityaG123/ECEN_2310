clear all
close all
clc

P = [1, -3, 5, -3, 0, 5] %P(x)
D = [1 -3 3]; %D(x)
[Q, R] = deconv(P, D);  %quotient Q(x) and remainder R(x)
sized = length(D);  %recieves and stored the highest degree of the remainder
comp = (R(1:sized) == 0); %ensures that the degree of the remainder is equal to 0
work = [P == (conv(Q, D) + R)] %secondary check to ensure that the remainder and the quotetnt get th original equation when done backwards to ensure correct math is done
if (all(work) && all(comp)) %if D(x) is greater than R(x) and the previos statement is true, then the program is a success, otherswise it failed.
    disp('It works - Success');
else
    disp('It does not work - Failed');
end