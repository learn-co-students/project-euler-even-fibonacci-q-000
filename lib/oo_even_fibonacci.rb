class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    sequence = [1, 2]
    cnt1 = 0
    cnt2 = 1
    @limit.times do 
      if sequence[cnt1] + sequence[cnt2] < @limit
        sequence.push(sequence[cnt1] + sequence[cnt2])
        cnt1 += 1
        cnt2 += 1 
      end
    end
    total = sequence.select{|num| num % 2 == 0}
    return total.inject(:+)
  end

end

# Very inefficient logic. This will loop through many
# more times than is necessary.