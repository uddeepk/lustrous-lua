-- exercise 5.4
function mypolynomial(p, x)
   value = 0
   xpow = 1
   for i = 1, #p do
      value = value + p[i] * xpow
      xpow = xpow * x
   end
   return value
end
