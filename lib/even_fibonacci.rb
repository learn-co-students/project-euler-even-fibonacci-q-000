# Implement your procedural solution here!
def even_fibonacci_sum(num)
  previous = 0
  current = 1
  sum = 0

  while current <= num
    sum += current if current.even?
    current, previous = previous, previous + current
  end
    sum
end



