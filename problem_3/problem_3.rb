# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

target = 600851475143

primes = [2,3,5,7,11,13,17,19]

class PrimeEnumerator < Enumerator ; end

enum = PrimeEnumerator.new do |y|
  primes = [2]
  i = primes.last
  loop do
    y << primes.last
    puts i
    prime = false
    until prime
      i += 1
      prime = true
      primes.each{|p| break unless prime = !(i % p == 0)}
      primes << i if prime
    end
  end
end

factors = []
until target == 1
  p = enum.next
  while target % p == 0
    factors << p
    target /= p
  end
end

puts "Done"

puts factors.max