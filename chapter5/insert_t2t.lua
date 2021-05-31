-- solution to ex5.7
-- define func to insert all elements of given list into a given position of another given list

local function isvalidkey(i)
   return type(i) == "number" and i > 0 and i % 1 == 0
end

-- insert elements of l2 into l1 at p
function insert_t2t(l1, p, l2)
   -- first getting valid keys
   keys = {}
   for k, v in pairs(l2) do
      if isvalidkey(k) then
	 table.insert(keys, k)
      end
   end
   table.sort(keys)

   -- now we use the keys to call the value and insert into position
   for _, i in ipairs(keys) do
      table.insert(l1, p, l2[i])
      p = p + 1
   end
end

   
