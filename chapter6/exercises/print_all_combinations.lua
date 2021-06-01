-- ex6.5
-- defines function to get all combinations of elements in an array
function combination_helper(a, r, index, data, i)
   -- a: array, r: size of combination, index: index of data,
   -- data: array to store current combination, i: index in a

   if index == r then
      -- combination is the size required
      print(table.unpack(data))
      return
   end
  

   -- are there any more elements ? if no exit
   if i > #a then return end
   
   -- Using pascal's identity

   -- current element is included
   -- fill rest of spots with C(n-1, r-1) i.e combination
   data[index + 1] = a[i]
   combination_helper(a, r, index + 1, data, i + 1)

   -- current is excluded, and next element takes the first position
   -- generate the r combination from the remaining elements
   combination_helper(a, r, index, data, i + 1) -- note i still moves forward

end

-- function that prints the r-combination of a
function print_combination(a, r)
   data = {}

   combination_helper(a, r, 0, data, 1)
end

function print_all_combinations(a)
   for i = 0, #a do
      print_combination(a, i)
   end
end

