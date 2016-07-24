# Implement your procedural solution here!

def even_fibonacci_sum(limit)
  fib_array = [1, 2]
  while (fib_array[-1] + fib_array[-2]) < limit
    fib_array.push(fib_array[-1] + fib_array[-2])
  end

  return fib_array.select(&:even?).reduce(:+)
end

puts even_fibonacci_sum(ARGV[0].to_i)
