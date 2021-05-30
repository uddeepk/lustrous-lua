-- solution to ex 5.6
-- defines function to check if table is valid sequence
-- sequence does not have nil values for any positive number key
function my_is_sequence(t)
   num_of_values = 0
   max_key = 0
   -- returns true if value is number, positive, and integer
   local function isvalidkey(i)
      return type(i) == "number" and i > 0 and i % 1 == 0
   end

   -- iterate through all posi
   for key, value in pairs(t) do --or should i forgo pairs ?
      -- is key numeric?
      if isvalidkey(key) then
	 -- is value nil?
	 if type(value) ~= "nil" then
	    num_of_values = num_of_values + 1
	    if key > max_key then
	       max_key = key
	    end
	 end
      end
   end
   return num_of_values == max_key
end
