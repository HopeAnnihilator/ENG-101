function outputData = sphereStuff(radius)
    volumeOuput = 4 / 3 * pi * radius ^ 3;
    surfaceAreaOutput = 4 * pi * radius ^ 2;
    outputData = [volumeOuput surfaceAreaOutput];
end
