-- to keep trainling nils we use table.pack
-- table.pack receive any number of args and puts extra field n containing total number of args

function nonils (...)
   local arg = table.pack(...)
   for i = 1, arg.n do
      if arg[i] == nil then return false end
   end
   return true
end

--[[
print(nonils(2,3,nil)) --> false
print(nonils(2,3)) --> true
print(nonils()) --> true
print(nonils(nil)) --> false
--]]
