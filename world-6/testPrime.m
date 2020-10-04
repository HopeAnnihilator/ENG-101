function primeReturn = testPrime(i)
%% This crap tests primes based on research provided at https://primes.utm.edu/prove/merged.html
    %find the square root of input
    squareOfInput = sqrt(i);
    %make array of all primes up to square root of input
    primesToTest = primes(squareOfInput);
    %test if there are any values in the list to test
    if primesToTest
        %if array contains values test each of them
        for x = primesToTest
            %if input is divisible by a prime then it is not prime, break
            %loop and return composite 
            if floor(i / x) == i / x
                primeReturn = 1;
                break
            %if number is not divisble by value tested, return 0 and
            %continue
            else
                primeReturn = 0;
            end
        end
    else
        %if no values to test return prime
        primeReturn = 0;
    end
end

