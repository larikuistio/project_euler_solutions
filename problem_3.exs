# Project Euler Problem 3
# https://projecteuler.net/problem=3

use Bitwise

defmodule Problem3 do
    def isPrime(n) do
        sum = 2..ceil(n/2) |> Enum.map(&rem(n,&1)) |> Enum.filter(&(&1) == 0) |> 
            Enum.map(fn n -> n + 1 end) |> Enum.sum
        if sum > 0 do
            :false
        else
            :true
        end
    end
    
    def largestPrime(n,orig_n) do
        if n > 0 do
            if rem(orig_n,n) == 0 and rem(n,2) != 0 and n != 2 do
                if isPrime(n) do
                    n
                else
                    largestPrime(n-1,orig_n)
                end
            else
                largestPrime(n-1,orig_n)
            end
        end
    end
end
num = 600851475143
prime = Problem3.largestPrime(ceil(num/2),num)
IO.inspect prime
