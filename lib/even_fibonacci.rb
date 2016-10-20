# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  counter = 1
  sum = 0
  fibo = [1,2]
  while fibo[counter] < limit
    if fibo[counter]%2==0
      sum +=fibo[counter]
    end
    fibo.push(fibo[counter]+fibo[counter-1])
    counter +=1
  end
  return sum
end
