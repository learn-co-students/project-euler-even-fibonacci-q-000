# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  num_1 = 1
  num_2 = 2
  sum = 0

  while (num_2 <= limit)
    if (num_2 % 2 == 0)
      sum += num_2
    end
    next_num = num_1 + num_2
    num_1 = num_2
    num_2 = next_num
  end

  return sum
end