# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  sequence = [1, 2]

  while sequence[-1] < limit
  sequence << sequence[-1] + sequence[-2]
  end

  if sequence[-1] > limit
    sequence.pop
  end

  sum = 0
  sequence.each do |i|
    if i % 2 == 0
      sum = sum + i
    end

  end

  return sum
end