# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

prime_enum = Enumerator.new do |y|
  primes = [2]
  i = primes.last
  loop do
    y << primes.last
    prime = false
    until prime
      i += 1
      prime = true
      primes.each{|p| break unless prime = !(i % p == 0)}
      primes << i if prime
    end
  end
end
last = 0
10_001.times{last = prime_enum.next}
puts last