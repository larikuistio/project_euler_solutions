defmodule Problem4 do
    def isPalindrome(n,orig_n,a,b,i) do
        if rem(round(n),round(a)) == rem(round(orig_n/b),round(a/10)) do
            if i < 3 do
                Problem4.isPalindrome(n/10,orig_n,a,b/10,i+1)
            else
                :true
            end
        else
            :false
        end
    end
end
res = []
for i <- 100..999 do
    for j <- 100..999 do
        if i*j < 100000 do
            if Problem4.isPalindrome(i*j,i*j,10,10000,0) do
                List.insert_at(res,-1,i*j)
            end
        else
            if Problem4.isPalindrome(i*j,i*j,10,100000,0) do
                List.insert_at(res,-1,i*j)
            end
        end
    end
end
        
IO.inspect res
