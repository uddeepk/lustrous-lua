-- lua auto adjusts number of results from a function to match call

function foo0 () end -- return no results
function foo1 () return "a" end -- returns 1 result
function foo2 () return "a", "b" end -- returns 2 results

x, y = foo2() -- x="a", y = "b"
x = foo2() --x="a", "b" is discarded
x, y, z = 10, foo2() -- x=10, y="a", z="b"

-- lua sets nil for missing values
x,y = foo0() -- x=nil, y=nil
x,y = foo1() -- x="a", y=nil
x,y,z = foo2() -- x="a", y="b", z=nil

--multiple results only happen when call is last
--a function that is not the last element in the list always produces exactly one result
x,y = foo2 (), 20 -- x="a", y=20 ('b' is discarded)
x,y = foo0(), 20, 30 -- x=nil, y=20 (30 is discarded)

print(foo0()) --> (noresults)
print(foo1()) --> a
print(foo2())--> a b
print(foo2(), 1) --> a 1
print(foo2() .. "x") --> ax

-- note Lua adjusting result to one because concatenation called
-- because foo2 appears inside an expression

