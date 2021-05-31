-- defines function to return the max value from a table and the index

function maximum(a)
   local mi = 1 -- max index
   local m = a[mi] -- max value
   for i = 1, #a do
      if a[i] > m then
	 mi = i; m = a[i]
      end
   end
   return m, mi -- return the maximum and its index
end

-- print (maximum({99, 100, 2, -1, 5})) -->100    2
