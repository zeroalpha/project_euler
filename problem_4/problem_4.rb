# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
  s = num.to_s
  s == s.reverse
end

palindromes = []

999.downto(100) do |i|
  999.downto(100) do |j|
    x = i*j
    palindromes << x if palindrome?(x)
  end
end

puts palindromes.max