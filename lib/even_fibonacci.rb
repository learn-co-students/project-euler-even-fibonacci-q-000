# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  fib_array = [1,1]
  
  until (fib_array[-1] + fib_array[-2]) >= limit do 
    fib_array.push(fib_array[-1] + fib_array[-2])
  end

  fib_array.select { |num| num.even? }.inject { |sum, n| sum + n}

end

