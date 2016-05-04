# Implement your procedural solution here!
def fibonacci(n)
  fibo = [1, 2]
  until fibo[fibo.length] == n
    fibo << (fibo[fibo.length - 1] + fibo[fibo.length - 2])
  end
  fibo.delete(fibo.length - 1)
  fibo
end
def even_fibonacci(n)
  fibo = fibonacci(n)
  fibo.select  {|int| int.even?}
end
def even_fibonacci_sum(n)
  fibo = even_fibonacci(n)
  sum = 0
  fibo.each {|n| sum += n}
  sum
end
