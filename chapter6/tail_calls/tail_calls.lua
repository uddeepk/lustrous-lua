-- Tail
-- Lua is properly tail recursive( is goto dressed as call)

function f (x) x = x + 1; return g(x) end

-- after f call g, nothing else to do
-- program no need to return to calling function
-- when g returns control can return directly to poin that called f
-- it does not use any stack space
-- tail-call elimination

function foo(n)
   if n > 0 then return foo(n-1) end
end

-- foo never overflows the stack.

