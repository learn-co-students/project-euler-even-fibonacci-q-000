# Implement your procedural solution here!

def even_fibonacci_sum(number)
  sum = 0
  t = 1
  index = 1

  while index < number
    sum += index if index % 2 == 0

    x = index
    index = index + t
    t = x
  end

  sum
end
