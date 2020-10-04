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

%% Find the 100th number in Sequence
%loop through all the junk with for to complete sequence
for i = 1 + length(sequenceArray):100
    sequenceArray(i) = sequenceArray(i - 1) +  sequenceArray(i - 2);
end

%% Display 100th value
disp(sequenceArray(end))

