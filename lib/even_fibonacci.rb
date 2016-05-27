# Implement your procedural solution here!
require 'pry'
def even_fibonacci_sum(limit)
  array = [1,2]
  index = 2
  i = 2
  while i < limit
    
    i = (array[index - 1] + array[index - 2])
    if i < limit
      array << i
    end
    index += 1
  end
  even_array = array.select {|num| num.even?}
  even_array.reduce {|sum, i| sum + i}
end