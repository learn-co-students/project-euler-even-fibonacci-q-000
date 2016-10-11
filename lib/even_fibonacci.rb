# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  index = 1
  array = [1, 2]
  while array[index] + array[index-1] <= limit
    array << array[index] + array[index -1]
    index+= 1
  end
  array.reject{|i| i.odd?}.inject(:+)
end
