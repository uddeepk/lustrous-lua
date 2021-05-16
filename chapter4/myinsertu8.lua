-- defines function to insert a u8 string into a given position of another u8 string
function myinsertu8(s1, pos, s2)
   prefix = ""
   
   for i = 1, pos - 1 do
      prefix = prefix .. utf8.char(utf8.codepoint(s1, utf8.offset(s1, i)))
   end
   
   suffix = string.sub(s1, utf8.offset(s1, pos ) )
   return (prefix .. s2 .. suffix)
end
