
clear
clc

encodedMessage = [
    [25, -33, -53],;
    [27, -31, -84],;
    [8, -23, 40],;
    [-15, 15, 44],;
    [6, -31, 107],;
    [15, -30, 24]
];

knownKey = [
    [-4 -4 -4],;
    [-4 -4 -4],;
    [-4 -4 -4]
];
keySize = length(knownKey);
depth = 4;
x = keySize ^ 2;

testKey(knownKey,encodedMessage);
while x > 0
    value = knownKey(x);
    if value >= depth 
        knownKey(x) = -depth;
        x = x - 1;
    else
        knownKey(x) = value + 1;
        testKey(knownKey,encodedMessage);
        x = keySize ^ 2;
    end
end

