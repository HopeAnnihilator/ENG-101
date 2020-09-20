%% Learning to graph data
%
% Description: Graph stuff
%
% Assumptions: Graphs show data
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: September 20, 2020$
%---------------------------------------------------------

%clear workspace
clear

%create array of X data
xData = linspace(-1, 1, 200);

%generate y1, y2, and y3 for every x
for i = 1:length(xData)
    y1(i) = sind(2 * pi * xData(i)) / (1 + xData(i) ^ 2);
    y2(i) = 1 / (1 + xData(i) ^ 2);
    y3(i) = -1 / (1 + xData(i) ^ 2);
end

%create graph
hold on
graphData(1) = plot(xData, y1, 'b-');
graphData(2) = plot(xData, y2, 'r--');
graphData(3) = plot(xData, y3, 'g--');

%create legend
legend(graphData, 'y1','y2','y3');

%label graph 
title('Plotting Data')
xlabel('X-Axis') 
ylabel('Y-Axis')
