# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  f1, f2, fib, sum = 0, 1, 0, 0

  while fib < limit
    sum += fib if fib%2 == 0
    f1, f2 = f2, f1 + f2
    fib = f1 + f2
  end
  sum
end




