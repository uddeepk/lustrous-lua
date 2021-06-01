-- ex 6.3
-- defines a function that takes an arbitrary number of values and returns all except the first one
function get_from_second(...)
   return select(2, ...)
end
