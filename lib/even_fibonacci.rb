# Implement your procedural solution here!
def even_fibonacci_sum(limit)

  fibonacci_array = Array.new(2,1)
  sum=0
  i=1

  while fibonacci_array.last < limit
    fibonacci_array << (fibonacci_array[i-1] + fibonacci_array[i])
    i += 1
    #p fibonacci_array
  end

  fibonacci_array.select do |i|
   if i < limit && i % 2 == 0
    sum += i
   end
  end
  return sum 
end