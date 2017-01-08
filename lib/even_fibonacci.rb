# Implement your procedural solution here!

def even_fibonacci_sum(limit)
  total = 2
  fib_array = [1,2]
  while ((fib_array[-1] + fib_array[-2]) <= limit ) do
    fib_array << (fib_array[-1] + fib_array[-2])
    if (fib_array[-1] % 2 == 0)
      total += fib_array[-1]
    end
  end
  total
end
