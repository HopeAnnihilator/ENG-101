%% Sphere Problems
%
% Description: Do math revolving around spheres 
%
% Assumptions: This just seems tedious 
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

%% Input Radius
radiusArray = 1 : 50;

%% Add Volume and Surface Area to Array
for i = radiusArray
    %not really sure what is meant by
    %"If the user only provides one output or no output variables, the function should output the volume."
    output = sphereStuff(i);
    volume(i) = output(1);
    surfaceArea(i) = output(2);
end

%% Display Surface Area and Volume
fprintf("Volume");
disp(volume);
fprintf("\n\n\n\n\n\nSurface Area");
disp(surfaceArea);
