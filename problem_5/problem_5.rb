# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

LIMIT = 20

sieve = (2..LIMIT).to_a

sieve.each do |i|
  prim = false
  i.downto(2) do |j|
    break if prim = i % j == 0
  end
  if !prim
    x = i
    while x <= 20
      sieve.delete(x+=i)
    end
  end
end

composite = (2..LIMIT).to_a.map do |i|
  ret = []
  sieve.each do |p|
    while i % p == 0
      ret << p
      i /= p
      break if i == 1
    end
  end
  ret
end

factors = composite.flatten.uniq.sort.map{|f| [f,0]}.to_h

composite.each do |comp|
  factors.keys.each do |k|
    count = comp.count(k)
    factors[k] = count if count > factors[k]
  end
end

erg = factors.to_a.map! do |k,v|
  k**v
end.inject(:*)

puts erg