-- ex6.4 shuffle given list
function my_shuffle(t)
   -- setting math seed
   -- math.randomseed(0)
   math.randomseed(os.time())
   local l = table.pack(table.unpack(t)) --make new table to manipulate
   -- t = {}
   local i = 1
   while #l > 0 do
      local index = math.random(#l)
      local x = table.remove(l, index)
      --table.insert(t, x)
      t[i] = x
      i = i + 1
   end
   -- t = l
   -- print(table.unpack(t))
   -- return t
end

