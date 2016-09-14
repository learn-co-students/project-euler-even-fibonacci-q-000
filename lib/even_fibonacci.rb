# Implement your procedural solution here!
# thanks to @ollieshmollie. I learned about array[-1] and array[-2] and I got this code
def even_fibonacci_sum(limit)
  fib = [1, 2]
  while fib[-1] < limit
    fib.push(fib[-1] + fib[-2])
  end
  return fib.keep_if {|n|
    n.even? && n < limit
  }.reduce(:+)
end
