-- solving ex5.8
-- defines function that returns concatenation of list of strings

function my_table_concat(l)
   -- assuming that lists are sequences
   dofile("my_is_sequence.lua")
   s = ""
   if my_is_sequence(l) then
      --[[ --the commen
      for _, v in ipairs(l) do
	 s = s .. v
      end
      return s
	 
      --]]
      str = {s = ""}
      --return give_string(l, 1)
      give_string(l, 1, str)
      return str.s
   else
      print("Not valid sequence")
   end
--   return nil
end

-- trying tail calls
function give_string(l, n)
   if n > #l then
      return ""
   end
   -- else

   return l[n] .. give_string(l, n + 1)
end

-- attempted to somehow pass string by ref...
function give_string(l, n, r)
   if n > #l then
      return nil
   end

   r.s = r.s .. l[n]
   give_string(l, n+1, r)
end
