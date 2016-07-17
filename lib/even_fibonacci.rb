def even_fibonacci_sum(limit)
  sequence = [1, 2]
  cnt1 = 0
  cnt2 = 1
  limit.times do 
    if sequence[cnt1] + sequence[cnt2] < limit
      sequence.push(sequence[cnt1] + sequence[cnt2])
      cnt1 += 1
      cnt2 += 1 
    end
  end
  total = sequence.select{|num| num % 2 == 0}
  return total.inject(:+)
end
