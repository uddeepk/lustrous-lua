--[[ lua functions: multiple results
   lua functions can return multiple results
   example below is of string.find from the book
--]]

s, e = string.find("hello Lua users", "Lua")
print(s, e) --> 7        9  ie match start index and end
