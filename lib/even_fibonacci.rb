# Implement your procedural solution here!
def fibonacci(limit)
  fibonacci = [1, 2]
  return limit if limit == 1
  while fibonacci[fibonacci.length - 1] + fibonacci[fibonacci.length - 2] <= limit do
    fibonacci.push(fibonacci[fibonacci.length - 1] + fibonacci[fibonacci.length - 2])
  end
  fibonacci
end

def even_fibonacci_sum(limit)
  fib_array = fibonacci(limit)
  sum = 0
  fib_array.each do |value|
    sum += value if value.even?
  end
  sum
end
