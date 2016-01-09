# Implement your procedural solution here!
def even_fibonacci_sum(num)
  fibonacci_set = [1,2]
  while fibonacci_set.last < num
    if fibonacci_set.last + fibonacci_set[-2] < num
      fibonacci_set << fibonacci_set.last + fibonacci_set[-2]
    else
      break
    end
  end
  even_fibonacci_set = fibonacci_set.select {|i| i.even?}
  even_fibonacci_sum = 0
  even_fibonacci_set.each { |x| even_fibonacci_sum += x }
  return even_fibonacci_sum
end