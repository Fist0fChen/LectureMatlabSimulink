function [ n ] = pprime( b, e )
%Exercise 4 prime
%this function counts the number of prime numbers in specified range
%using parallel processing

n = 0;
if b < 2
    b = 2;
end
parfor k = b:e
    boolprime = 1;
    for l = 2:k-1
        if mod(k, l) == 0
            boolprime = 0;
            break
        end
    end
    if boolprime == 1
        n = n + 1;
    end
end
end