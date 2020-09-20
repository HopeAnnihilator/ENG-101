%% Solving Quadratic Equations
%
% Description: Solve Quadratic Equations
%
% Assumptions: Quadratic Equations can be solved
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: September 20, 2020$
%---------------------------------------------------------

%clear workspace
clear

%ask user for input
coefA = input('Input coeffecient A: ');
coefB = input('Input coeffecient B: ');
coefC = input('Input coeffecient C: ');

%calculate discriminant and root type
discriminant = coefB ^ 2 - (4 * coefA * coefC);
if discriminant == 0
    rootType = "The roots are real";
elseif discriminant > 0
    rootType = 'The roots are non-equal and real';
else
    rootType = 'The roots are complex';
end

%save equation roots
equationRoots = roots([coefA, coefB, coefC]);

%print root type and roots
fprintf(rootType);
fprintf('\nThe roots are %g and %g \n', equationRoots(1), equationRoots(2));
