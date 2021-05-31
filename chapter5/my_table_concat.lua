-- solving ex5.8
-- defines function that returns concatenation of list of strings

function my_table_concat(l)
   -- assuming that lists are sequences
   dofile("my_is_sequence.lua")
   s = ""
   if my_is_sequence(l) then
      for _, v in ipairs(l) do
	 s = s .. v
      end
   else
      print("Not valid sequence")
   end
   return s
end

