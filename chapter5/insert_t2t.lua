-- solution to ex5.7
-- define func to insert all elements of given list into a given position of another given list

local function isvalidkey(i)
   return type(i) == "number" and i > 0 and i % 1 == 0
end

-- insert elements of l2 into l1 at p
function insert_t2t(l1, p, l2)
   for k, v in ipairs(l2) do
      if isvalidkey(k) then
	 table.insert(l1, p, v)
	 p = p + 1
      end
   end
end

   
