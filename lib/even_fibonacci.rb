def even_fibonacci_sum(limit)
  array = []
  i = 0
  first = 0
  second = 1

  while i < limit
    i = first + second
    break if i > limit
    array << i if i.even?
    first = second
    second = i
  end
  array.inject(:+)  
end  