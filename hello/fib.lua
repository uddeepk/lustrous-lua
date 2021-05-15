-- defines a fibionacci function
function fib (n)
   if n == 0 then
      return 0
   elseif n == 1 then
      return 1
   else
      return fib(n - 1) + fib(n - 2)
   end
end

print("enter a number:")
a = io.read("*n") -- reads a number
print(fib(a))
   
   
