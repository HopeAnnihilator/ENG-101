%% Number Sequences
%
% Description: Sequence stuff and junk with arrays
%
% Assumptions: None
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: October 4, 2020$
%---------------------------------------------------------

%% Clear everything
clear
clf
close all
clc

%% Add Sequence
sequenceArray = [0 1 1 2 3 5];
format long

%% Find the 100th number in Sequence
%loop through all the junk with while to complete sequence
while strlength(string(sequenceArray(end))) < 6
    sequenceArray(end + 1) = sequenceArray(end) +  sequenceArray(end - 1);   
end

%% Display first number with 6 digits