# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib = [1, 2]
  while fib[-1] < limit
    fib.push(fib[-1] + fib[-2])
  end
  return fib.keep_if {|n|
    n.even? && n < limit
  }.reduce(:+)
end
