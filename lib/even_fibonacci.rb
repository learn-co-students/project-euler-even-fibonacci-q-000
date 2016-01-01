# Implement your procedural solution here!
def even_fibonacci_sum(limit)

  fibo = [1, 2]
  x = 0
  y = 1
  
  loop do 
    z = fibo[x] + fibo[y]
    fibo << z
    x += 1
    y += 1
    if fibo.last > limit
      fibo.pop
      break
    end
  end
  nicco = fibo.select {|x| x.even?}
  nicco.reduce(:+)
end
