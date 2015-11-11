# Implement your procedural solution here!
def even_fibonacci_sum(limit)

  fib_array = [1,1]

  while fib_array[-2] + fib_array[-1] < limit 
    fib_array << fib_array[-2] + fib_array[-1]
  end

  sum = 0

  fib_array.each { |x| sum += x if x.even? }

  sum
end