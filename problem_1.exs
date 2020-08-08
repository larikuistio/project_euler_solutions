# Project Euler Problem 1
#https://projecteuler.net/problem=1

defmodule Problem1 do
    def isMultiple(n) do
        cond do
            rem(n,3) == 0 -> n
            rem(n,5) == 0 -> n
            rem(n,5) != 0 and rem(n,3) != 0 -> 0
        end
    end
end

sum = 1..999 |> Enum.map(&Problem1.isMultiple(&1)) |> Enum.sum

IO.inspect sum
