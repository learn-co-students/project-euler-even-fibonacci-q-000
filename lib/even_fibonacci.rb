# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib_list = fib(limit)
  evens = fib_list.select {|i| i.even?}
  return evens.inject(:+)
end
def fib(limit)
  fib_array = Array.new
  a = 0
  b = 1
  fib_array << a
  fib_array << b
  while b < limit
    c = a+b
    a = b
    b = c
    if b <= limit
      fib_array << b
    end
  end
  return fib_array
end