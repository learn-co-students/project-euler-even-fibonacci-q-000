# Implement your procedural solution here!
def even_fibonacci_sum(n)
  t1 = 0
  t2 = 1
  sum = 0
  while t1 + t2 < n
    fib = t1 + t2
    if fib & 1 == 0
      sum += fib
    end
    t1 = t2
    t2 = fib
  end
 
  sum
end
