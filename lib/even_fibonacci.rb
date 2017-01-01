# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  
  fibs = [1,1]
  while (new_fib = fibs[-1] + fibs[-2]) < limit do
    fibs << new_fib
  end
  fibs.inject(0) { |sum, i| i.even? ? sum + i : sum }

end