# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sum, i = 0, 0
  first, second = 0, 1

  while i < limit
    i = first + second
    break if i > limit
    if i % 2 == 0
      sum += i
    end
    first = second
    second = i
  end
  sum
end