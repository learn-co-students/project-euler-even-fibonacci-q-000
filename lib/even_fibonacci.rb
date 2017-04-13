# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib = [0,1]
  until limit - fib[-1] < fib[-2]
    fib.push(fib[-1] + fib[-2])
  end
  fib.select {|x| x.even? }.inject(0){|sum, x| sum + x}
end
