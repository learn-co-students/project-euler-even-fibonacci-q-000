# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  i = 0
  j = 1
  array = []
  while j <= limit
    array << j
    j = array[i] + array[i-1]
    i += 1
  end
  array.select{|num| num % 2 == 0}.inject{|sum,num| sum+num}
end