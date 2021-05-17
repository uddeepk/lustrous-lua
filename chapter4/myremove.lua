-- defines function to remove a slice from a string
-- the slice give by its initial position and its length
function myremove(s, p, l)
   return string.sub(s, 1, p - 1) .. string.sub(s, p + l)
end
