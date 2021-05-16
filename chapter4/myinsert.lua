-- defines function to insert a string into a given position of another one
function myinsert(s1, pos, s2)
   return (string.sub(s1, 1, pos - 1) .. s2 .. string.sub(s1, pos))
end
