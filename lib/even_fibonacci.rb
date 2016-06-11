# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  filtered_array = []
  i, first, second = 0, 0, 1
  while i < limit
    i = first + second
    break if i > limit
    filtered_array << i if i.even?
    first = second
    second = i
  end
  filtered_array.reduce(:+)
end
