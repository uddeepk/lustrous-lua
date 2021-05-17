-- defines a function to check if a string is palindrome
function myispali(s)
   for i = 1, #s//2 do
      if string.byte(s, i) ~= string.byte(s, #s - (i - 1)) then
	 return false
      end
   end
   return true

--   return s == string.reverse(s)
end
