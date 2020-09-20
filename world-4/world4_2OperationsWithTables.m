%% Operations With Tables
%
% Description: Perform operations with given tables
%
% Assumptions: Tables are cool but I much prefer them made out of Granite
%
% $Revision: R2020a$ 
% $Author: Viropexis
% $Date: September 20, 2020$
%---------------------------------------------------------

%Clear everything
clear
clf
close all
clc

%Enter student numbers
stu_num=[1:1:12];
%Enter student grades 
exam1=[100 80 25 45 89 65 92 75 76 15 80 50];  
exam2=[88 95 55 60 81 25 70 100 95 70 72 10];

studentsBetween8089 = length(exam1(exam1 >= 80 & exam1 <= 89));
studentsAbove70 = length(exam2(exam2 > 70));

avgExam1 = mean(exam1);
avgExam2 = mean(exam2);

aboveAverageExam1 = length(exam1(exam1 > avgExam1));
aboveAverageExam2 = length(exam2(exam2 > avgExam2));

passed= [];
passedOne = [];
for i = stu_num
    if exam1(i) > avgExam1 && exam2(i) > avgExam2
        passed(end + 1) = i;
    elseif exam1(i) > avgExam1 || exam2(i) > avgExam2
        passedOne(end + 1) = i;
    end
end

fprintf('%g Students scored between an 80 and 89 on exam 1\n', studentsBetween8089);
fprintf('%g Students scored above a 70 on exam 2\n', studentsAbove70);
fprintf('The average for exam 1 is %g\n', avgExam1);
fprintf('The average for exam 2 is %g\n', avgExam2);
fprintf('%g Students scored above average on exam 1\n', aboveAverageExam1);
fprintf('%g Students scored above average on exam 2\n', aboveAverageExam2);
fprintf('These students scored above average on both exams\n');
disp(passed);
fprintf('These students scored above average on either exam\n');
disp(passedOne);

    
