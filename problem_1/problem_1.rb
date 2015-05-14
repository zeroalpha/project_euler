#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

require 'benchmark'

LIMIT = 5_000_000

def perf(limit)
    multiples = []
    x=0
    loop do
        break if x+3 >= limit
        multiples << x+=3
    end
    x=0
    loop do
        break if x+5 >= limit
        multiples << x+=5
    end
     multiples.uniq.inject(:+)
end

def show_off(limit)
  (1...limit).to_a.select{|i| i % 3 == 0 || i % 5 == 0}.inject(:+)
end

Benchmark.bm do |b|
  b.report {perf(LIMIT)}
  b.report {show_off(LIMIT)}

end

puts perf(LIMIT)

puts show_off(LIMIT)