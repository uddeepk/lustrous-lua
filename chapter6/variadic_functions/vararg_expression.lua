function foo (...)
   local a, b, c = ...
   print(a, b, c)
end

function foo1 (...)
   print("calling foo:", ...)
   return foo(...)
end

function id(...) return ... end
