def even_fibonacci_sum(limit)
  fibonacci_series = Array.new
  i=0
  fibonacci_series.push(1,2)
  sum=0
  num = 0
  while num < limit
    i +=1
    num = fibonacci_series [i] + fibonacci_series[i-1]
    fibonacci_series.push(num)   
  end
  even_fibonacci = fibonacci_series.select {|element|  element % 2 == 0 }
  even_fibonacci.each{|item| sum=sum + item}
  return sum
end


