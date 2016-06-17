def even_fibonacci_sum(limit)
  i, first, second = 0, 0, 1
  even_numbers = []

  while i < limit
    i = first + second
    break if i > limit
    even_numbers << i if i.even?
    first = second
    second = i
  end

  even_numbers.inject(:+)
end
