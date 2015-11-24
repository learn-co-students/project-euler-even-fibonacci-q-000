def even_fibonacci_sum(limit)

  a = 0  # first one
  b = 1  # second one
  c = 0  # current

  sum = []
  while c <= limit
    c = a + b
    break if c > limit
    sum << c if c % 2 == 0

    a = b
    b = c
  end

  sum.inject {|sum, num| sum += num}
end