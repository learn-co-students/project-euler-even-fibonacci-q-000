# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  previous_fibonacci_1 = 1
  previous_fibonacci_2 = 1
  current_fibonacci = 2
  sum = 0
  until current_fibonacci > limit
    if current_fibonacci % 2 == 0
      sum += current_fibonacci
    end
    previous_fibonacci_1 = previous_fibonacci_2
    previous_fibonacci_2 = current_fibonacci
    current_fibonacci = previous_fibonacci_1 + previous_fibonacci_2
  end
  sum
end