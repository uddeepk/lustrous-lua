-- exploring traversing

-- using pairs
print("Traverse using pairs")
t = { 10, print, x = 12, k = "hi"}
for k, v in pairs(t) do
   print(k, v)
end
-- using pairs, the order that elements traversed undefined

-- ipairs the way to go

--[[
print("Now using ipairs:")
for k, v in ipairs(t) do
   print(k, v)
end
--]]
--> Now using ipairs:
--> 1	10
--> 2	function: 0x422590

t = {10, print, 12, "hi"}
print("Now using ipairs:")
for k, v in ipairs(t) do
   print(k, v)
end

-- traversing numerically ensures order
print("Traversing numerically:")
for k = 1, #t do
   print(k, t[k])
end
