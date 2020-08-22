%in a 52 card deck, determine the total number of combinations with 4 cards
%this equation looks complicated so lets do it the easy way

%define known values
totalCards = 52;
cardsDrawn = 4;
%create a value of 1 to spice things up later
totalCombinations = 1;


%multiply all cards per draw but subtract each card already drawn from deck
%is this cheating?
totalCombinationsCheatingWay = totalCards * (totalCards - 1) * (totalCards - 2) * (totalCards - 3);

%going to assume thats cheating and do this a normal way 
%first lets loop through program for  each card drawn
for i = drange(0:cardsDrawn - 1)
    %we use i because thats what real programmers use and us imposters
    %gotta try to disguise ourselves
    %from here we just kind of do the same thing the easy and fun way,
    %take the total cards and subtract each card drawn, then multiply it by
    %the previously possible cominations
    totalCombinations = totalCombinations * (totalCards - i);
end

%remove i because its annoying and unloved
clear i

%clean up the rest of the junk
clear cardsDrawn
clear totalCards