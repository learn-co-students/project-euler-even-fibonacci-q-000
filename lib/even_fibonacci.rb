# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  numbers = [1, 2]

  num_index_1 = 0
  num_index_2 = 1

  num_sum = 0
  sum = 2

  while numbers[num_index_1] + numbers[num_index_2] <= limit
    num_sum = numbers[num_index_1] + numbers[num_index_2]
      if num_sum % 2 == 0
        sum += num_sum
      end
    numbers << num_sum
    num_index_1 += 1
    num_index_2 += 1
  end
  sum
end