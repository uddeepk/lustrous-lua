-- read 10 lines, storing them in a table
a = {}
for i = 1, 10 do
   a[i] = io.read()
end

-- sequence is when there are not holes in the table

-- print the lines, from 1 to #a
for i = 1, #a do
   print(a[i])
end
print("length before appending nil " .. #a)
a[#a + 1] = v
print("length after appending nil " .. #a) --> 10
-- note that nil makes the length operator incorrect
-- length operator unreliable for lists with holes(nils)
