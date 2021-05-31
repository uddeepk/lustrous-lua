-- using select
--[[
print(select(1, "a", "b", "c")) --> a b c
print(select(2, "a", "b", "c")) -->b c
print(select(3, "a", "b", "c")) --> c
print(select("#", "a", "b", "c")) --> 3
--]]

function add(...)
   local s = 0
   for i = 1, secect("#", ...) do
      s = s + select(i, ...)
   end
   return s
end

-- for few arguments using select is faster,
-- but for high number of args, calls to select is too costly
