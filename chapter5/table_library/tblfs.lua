-- table library

t = {}
for line in io.lines() do
   table.insert(t, line)
end
print(#t) --> (number of lines read)

-- table.insert
---[[
t2 = {10, 20, 30}
table.insert(t2, 1, 15) --> now t2 = {15, 10, 20, 30}
--]]

--table.remove
-- removes and returns an elemnt from given position and fils the gap
-- if position not give removes the last element
a = table.remove(t2, 2) --> a = 10; and now t2 = {15, 20, 30}
print(a) --> 10

-- table.move
-- table.move(a, f, e, t) moves elements in table a from f until e(inclusive) to position t

a = {1, 2, 3, 4, 5}
table.move(a, 1, #a, 2)
newElement = -1
a[1] = newElement

table.move(a, 2, #a, 1)
a[#a] = nil -- have to explicitly remove last element
