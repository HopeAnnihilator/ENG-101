%% Sphere Problems
%
% Description: Find Prime Numbers 
%
% Assumptions: Prime Numbers Are Cool
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: October 4, 2020$
%---------------------------------------------------------

%% Clear Everything
clear
clf
close all
clc

%% Input Array
 numberList = [2, 6, 5, 103, 42, 343, 17, 21, 181];
 
%% Create empty array N and NP
P = [];
NP = [];

 %% Loop through Array
for i = numberList
    isPrime = testPrime(i);
    %isPrime, almost like there is a built in function for this 
    if isPrime == 0
        P(end + 1) = i;
    else 
        NP(end + 1) = i;
    end
end

%% Display Output 
fprintf('Primes');
disp(P);
fprintf('Composites');
disp(NP);