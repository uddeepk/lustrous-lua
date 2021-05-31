-- look at table.unpack

print(table.unpack{10, 20, 30}) --> 10 20 30
a, b = table.unpack{10, 20, 30} --> a=10, b=20, 30 discarded

--table.unpack transforms a Lua table to a return list

-- for a variable function of
-- f(table.unpack(a))

f = string.find
a = {"hello", "ll"}

print(f(table.unpack(a)))

--table.unpack only works for proper sequences
print (table.unpack({"Sun", "Mon", "Tue", "Wed"}, 2, 3))
-- > Mon    Tue

-- unpack in Lua from book using recursion
function unpack (t, i ,n)
   i = i or 1
   n = n or #t
   if i <= n then
      return t[i], unpack(t, i + 1, n)
   end
end
