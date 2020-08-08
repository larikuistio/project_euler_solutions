# Project Euler Problem 2
# https://projecteuler.net/problem=2

defmodule Problem2 do
    def sumEvenValuedTerms(a,b,sum) do
        if a+b <= 4000000 do
            new_sum = sumEvenValuedTerms(b,a+b,sum)
            if rem(a+b,2) == 0 do
                _ret_sum = new_sum + a + b
            else
                _ret_sum = new_sum
            end
        else
            sum
        end
    end
end

IO.inspect Problem2.sumEvenValuedTerms(0,1,0)
