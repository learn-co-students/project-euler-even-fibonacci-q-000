# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib_array = [1, 2]
  sum = 0
  n = 2
  while (fib_array[n - 2] + fib_array[n - 1]) < limit
    fib_array.push(fib_array[n - 2] + fib_array[n - 1])
    n += 1
  end
  fib_array.each do |e| 
    if e % 2 == 0
      sum += e
    end
  end
  sum
end