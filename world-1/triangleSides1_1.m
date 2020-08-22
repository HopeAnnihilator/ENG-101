%solve sideA, angleA, and angleB for a right triangle given: sideB and sideC 

%define known values
sideB = 12;
sideC = 34;
angleC = 90;

%find missing side using A^2 + B^2 = C^2
sideA = ((sideC ^ 2) - (sideB ^ 2)) ^ 0.5;

%find one missing angle in radians
angleArad = acos(sideB/sideC);

%convert radians to degrees
angleA = angleArad * (180 / pi);

%triangles angles add up to 180, subtract the known angles for final angle
angleB = 180 - angleA - angleC;

%remove excess variables
clear angleC
clear angleArad
clear sideB
clear sideC
