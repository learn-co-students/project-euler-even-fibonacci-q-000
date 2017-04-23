# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  
  fib = [1, 2]

  while fib[-1] < limit 
    fib << fib[-1] + fib[-2]
  end

  fib.select {|num|
    num.even? && num < limit
  }.reduce(:+)

end
