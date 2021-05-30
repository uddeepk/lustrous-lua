-- constructors with special chars as indice

opnames = {["+"] = "add", ["-"] = "sub",
   ["*"] = "mul", ["/"] = "div"}

--[[
i = 20; s = "-"
a = {[i+0] = s, [i+1] = s..s, [i+2] = s..s..s}
print(opnames[s]) --> sub
print(a[22]) --> ---
--]]
