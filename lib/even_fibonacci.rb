def even_fibonacci_sum(limit)
  fib = [1, 2]
  fib_evens = []
  num = 0
  count = 0
  while (fib[fib.length-1] < limit) do 
    num = (fib[0+count] + fib[1+count])
    fib.push(num)
    count +=1 
  end
  fib.each do |n| 
    if n.even? && n < limit
      fib_evens.push(n)
    end
  end
    fib_evens.inject(0){|sum,x| sum + x }
end
