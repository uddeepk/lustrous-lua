-- defines function to fill table t with "test" n times
function my_fill(t, n)
   for i = 1, n do
      table.insert(t, "test")
   end
end
