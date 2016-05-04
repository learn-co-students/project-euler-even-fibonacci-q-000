# Implement your procedural solution here!
def fibonacci(n)
  fibo = [1, 2]
  while fibo[-1] < n
    fibo << (fibo[-1] + fibo[-2])
  end
  fibo.pop
  fibo
end
def even_fibonacci_sum(n)
  fibo = fibonacci(n)
  sum = 0
  fibo.each {|n| sum += n if n.even?}
  sum
end
