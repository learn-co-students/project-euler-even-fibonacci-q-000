def even_fibonacci_sum(limit)
  return sum_evens(get_sequence(limit))
end

def sum_evens(sequence)
  i = 0
  sum = 0
  while i < sequence.length
    if sequence[i] % 2 == 0
      sum += sequence[i]
    end
    i += 1
  end
  return sum
end

  def get_sequence(limit)
    sequence = [1,2]
    i = 0
    while i < limit
      i = sequence[sequence.length - 1] + sequence[sequence.length - 2]
      sequence.push(i)
    end
    sequence.pop
    return sequence
  end
