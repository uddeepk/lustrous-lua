-- ex 6.3
-- defines function that takes arbitrary num of values except last

function solution(i, n, ...)
   if i >= n then -- base case
      return -- note here, a blank return returns nothing( not nil)
   end
   return (select(i, ...)), solution(i + 1, n, ...)
end

function except_last(...)
   local num_args = select("#", ...)
   return solution(1, num_args, ...)
end
