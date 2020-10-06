%% Extra Credit
%
% Description: Do some math stuff to break a basic encryption algorithm
%
% Assumptions: This is going to take a long time to execute
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: October 11, 2020$
%---------------------------------------------------------

%% Clear Everything
clear
clf
close all
clc

%% Log the time program starts
startTime = clock;

%% Add the encrypted message
encodedMessage = [
    [25, -33, -53],;
    [27, -31, -84],;
    [8, -23, 40],;
    [-15, 15, 44],;
    [6, -31, 107],;
    [15, -30, 24]
];

%% Add the base point for key
key = [
    [-4 -4 -4],;
    [-4 -4 -4],;
    [-4 -4 -4]
];

%% Create a location to fall back on when executing 
keySize = length(key);
depth = 4;
x = keySize ^ 2;

%% Test algorithm with key
% The first key does not need to be tested because it is singular anyways
while x > 0
    value = key(x);
    if value >= depth 
        key(x) = -depth;
        x = x - 1;
    else
        key(x) = value + 1;
        testKey(key,encodedMessage,startTime);
        x = keySize ^ 2;
    end
end

