# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

LIMIT = 100

numbers = (1..LIMIT).to_a

sum_of_squares = numbers.inject(0){|sum,n| sum + n**2}
square_of_sums = numbers.inject(:+)**2

puts (square_of_sums - sum_of_squares) 
