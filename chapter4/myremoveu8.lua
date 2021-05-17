-- defines function to remove a slice from a u8 string
-- the slice give by its initial position and its length
function myremoveu8(s, p, l)
   prefix = ""
   for i = 1, p - 1 do
      prefix = prefix .. utf8.char(utf8.codepoint(s, utf8.offset(s, i)))
   end
   suffix = string.sub(s, utf8.offset(s, p + l ))
   return prefix .. suffix
end
