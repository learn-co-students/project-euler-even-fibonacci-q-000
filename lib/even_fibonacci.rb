# Implement your procedural solution here!

def even_fibonacci_sum(limit)

  fibo_array = [ 1, 2 ]
  until fibo_array.last + fibo_array[-2] > limit 
    fibo_array << fibo_array.last + fibo_array[-2]
  end
    fibo_array.select { |num| num.even? }.inject { |x,y| x + y }
end
