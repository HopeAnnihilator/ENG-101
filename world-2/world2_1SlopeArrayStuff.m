%% Learning Arrays
%
% Description: I think I am supposed to be plotting lines using arrays
%
% Assumptions: I am plotting lines
%
% Inputs 
%   lines = [ 
%       -5, 3
%       7, -6
%        2, 12
%       ];
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: August 27, 2020$
%---------------------------------------------------------

%OMG YOU CAN CLEAR WORKSPACE AT START OF SCRIPT!!!!!!!!!!!!!!!
clear 

%lets define these lines in terms of x, b
lines = [ 
    -5, 3
    7, -6
    2, 12
    ];

%create the array for x from 0 to 20 with an increment of 1
x1 = 0 : 20;
%create an array of y values for every x on the given line
y1 = lines(1,1) * x1 + lines(1,2);

%line2 needs 41 values from -5 to 18 so we make 41 values with linspace
x2 = linspace(-5, 18, 41);
%find the y values for every item of x on the given line
y2 = lines(2,1) * x2 + lines(2,2);

%line3 needs to start with 4 and end with 125 at increments of 3 but 121
%isnt divisble by 3??????????
%whatever, lets define our array in terms of startValue : incremental
%Change : maxValue
x3 = 4 : 3 : 125;
%once again define y for every x
y3 = lines(3, 1) * x3 + lines(3,2);


%calculate the means of y1, y2, y3
means = [mean(y1) mean(y2) mean(y3)];
%calculate mins and maxes in an array in terms of min,max of y points
extremes = [
    min(y1) max(y1)
    min(y2) max(y2)
    min(y3) max(y3)
];

%plot it cuz the teacher said so
plot(x1,y1,x2,y2,x3,y3);

%clear excess garbage 
clear lines