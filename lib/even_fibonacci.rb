require 'pry'
# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fibs = [1, 2]
  even_fibs = 2
  next_fib = 3

  while next_fib < limit
    fibs << next_fib
    #binding.pry
    even_fibs += next_fib if next_fib % 2 == 0
    next_fib += fibs[-2]
  end
  even_fibs
end


