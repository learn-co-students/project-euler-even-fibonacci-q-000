def even_fibonacci_sum(limit)
  sequence = [1, 2]
  c1 = 0
  c2 = 1
  until sequence[cnt1] + sequence[c2] > limit
    sequence.push(sequence[c1] + sequence[c2])
    cnt1 += 1
    cnt2 += 1 
  end
  total = sequence.select{|num| num % 2 == 0}
  return total.inject(:+)
end

 # Optimized from first attempt
 # Only loops necessary amount of time to achieve answer.