%% MORTAGE STUFF :((((((((((
%
% Description: Trying to figure out the best mortage option for myself, the
% hard way
%
% Assumptions: None
%
% Inputs 
%   150k USD house
%   3.25 percent interest rate
%   down payment range: 0 - 60k in increments of 5k
%   30 year payement plan
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: August 27, 2020$
%---------------------------------------------------------

% set format to bank
format bank
% clear workspace
clear;
x = 1.123091414;

% add known values
totalCost = 15 * 10 ^ 4; 
interestRate = 3.25 / 100; %turn known percent to decimal
years = 30;

% create array of down payment options
paymentPlans = 0 : 5 * 10 ^3 : 6 * 10 ^ 4;

% loop through each down payment
for i = 1 : length(paymentPlans)
    % call down payment from array
    downPayment = paymentPlans(1, i);
    % calculate loan amount
    principalLoan = totalCost - downPayment;
    % find monthly payment of each plan
    paymentPlans(2,i) = (principalLoan * (interestRate / 12)) / (1 - (1 + interestRate / 12) ^ (-12 * years));
end