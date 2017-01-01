# Implement your procedural solution here!
def find_fibs(limit)
  fibs = [1,1]
  while (new_fib = fibs[-1] + fibs[-2]) < limit do
    fibs << new_fib
  end
  return fibs
end

def even_fibonacci_sum(limit)
  find_fibs(limit).inject(0) { |sum, i| i.even? ? sum + i : sum }
end