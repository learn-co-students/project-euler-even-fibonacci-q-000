# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib = [1, 2]
  num = 2
  loop do
    break if fib[num - 1] + fib[num - 2] > limit
    fib[num] = fib[num - 1] + fib[num - 2]
    num += 1
  end
  fib.select{|num| num.even?}.reduce(:+)
end