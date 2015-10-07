/*REXX*/
/* 
	If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
	Find the sum of all the multiples of 3 or 5 below 1000.
*/

sum = 0

do i = 3 to 999 by 1
  if (i//3=0 | i//5=0) then do
    say i
    sum = sum + i
  end
end

say sum
