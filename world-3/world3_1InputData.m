%% Learning to input data
%
% Description: Input data to do cool things with
%
% Assumptions: A tree falling in a forest always makes noise
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: September 20, 2020$
%---------------------------------------------------------

%clear workspace
clear

%ask user a questions about temperature and wind velocity
ambientTemperature = input("What is the temperature in degrees Farenheit?\n");
windVelocity = input("What is the wind velocity?\n");

%calculate wind chill
windChill = 35.74 + 0.6215 * ambientTemperature - 35.75 * windVelocity ^ 0.16 + 0.4275 * ambientTemperature * windVelocity ^ 0.16;


%calculate difference between temperature and wind chill
tempDiff = windChill - ambientTemperature;

%print 
fprintf('\nThe wind chill temperature is %g degrees Farenheight\r\n', windChill);
fprintf('It feels %g degrees colder than the temperature.\r\n', tempDiff);

%ask follow up question 
%create a loop requiring the bastard to put in yes or no, in case he tries
%some funny stuff
while true
    %save input to string to test
    cold = input('Is it cold enough for you?\n', 's');
    %compare string to acceptable answers
    if strcmp(cold, 'yes') || strcmp(cold, 'no')
        %break loop if answer is acceptable
        break
    %upon failure explain how yes/no questions work
    else
        fprintf('\nPlease input yes or no\n')
    end
end

%print final string
fprintf('\n');
fprintf('Well, dress warmly!');


