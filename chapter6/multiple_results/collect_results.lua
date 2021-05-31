function foo0 () end
function foo1 () return "a" end
function foo2 () return "a", "b" end

-- constructor calls collects all results from a call

t = {foo0()} -- t = {}
t = {foo1()} --t = {"a"}
t = {foo2()} -- t = {"a", "b"}

-- but only when call is last expression

t = {foo0(), foo2(), 4} -- t[1] = nil, t[2] = "a", t[3] = 4

-- returning all values

function foo (i)
   if i == 0 then return foo0()
   elseif i == 1 then return foo1()
   elseif i == 2 then return foo2()
   end
end

print(foo(1)) --> a
print(foo(2)) --> a b
print(foo(0)) -- (no results)
print(foo(3)) -- (no results)

-- forcing a call to return exactly one result
print((foo0())) -- nil
print((foo1())) -- a
print((foo2())) -- a
