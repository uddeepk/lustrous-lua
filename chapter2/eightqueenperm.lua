N = 8 -- board size

-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
   for i = 1, N  do -- for each quen already placed
      if (i == n) then goto skip_to_next end
      if (a[i] == c) or -- same column?
	 (a[i] - i == c - n) or -- same diagonal?
	 (a[i] + i == c + n) then -- same diagonal?
	 return false
      end
      ::skip_to_next::
   end
   return true -- no attacks; place is OK
end

-- print a board
function printsolution(a)
   for i = 1, N do -- for each row
      for j = 1, N do -- and for each column
	 --write "X" or "-" plus a space
	 io.write(a[i] == j and "X" or "-", " ")
      end
      io.write("\n")
   end
   io.write("\n")
end

-- add to board 'a' all queens from 'n' to 'N'
function addqueen (a, n)
   if n > N then -- all queens have been placed?
      printsolution (a)
      os.exit()
   else -- try to place n-th queen
      for c = 1, N do
	 if isplaceok(a, n, c) then
	    a[n] = c -- place n-th queen at column 'c'
	    addqueen(a, n + 1)
	 end
      end
   end
end

function issoln(a, n)
   for i = 1, n do
      if not isplaceok(a, i, a[i]) then
	 return false
      end
   end
   return true
end


function permgen (a, n)
   n = n or #a
   -- default for 'n' is size of 'a'
   if n <= 1 then
      -- nothing to change?
      -- printResult(a)
      if issoln(a, N) then printsolution(a) end-- do i need the n ?
   else
      for i = 1, n do
	 -- put i-th element as the last one
	 a[n], a[i] = a[i], a[n]
	 -- generate all permutations of the other elements
	 permgen(a, n - 1)
	 -- restore i-th element
	 a[n], a[i] = a[i], a[n]
      end
   end
end

-- run the program
permgen({1, 2, 3, 4, 5, 6, 7, 8}, 8)
   
