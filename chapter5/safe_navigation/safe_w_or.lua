-- safe navigation

-- no safe navigation operator in lua but we can use or

zip = (((company or {}).director or {}).address or {}).zipcode

-- or we can do it like the following

--[[
   E = {}
   ...
   zip = (((company or E).director or E).address or E).zipcode
--]]
