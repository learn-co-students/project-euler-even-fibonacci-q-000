class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @sequence = [1, 2]
  end

  def fibonaccinize
    c1 = 0
    c2 = 1
    until @sequence[c1] + @sequence[c2] > @limit
      @sequence.push(@sequence[c1] + @sequence[c2])
      c1 += 1
      c2 += 1 
    end
  end

  def sum
    fibonaccinize
    total = @sequence.select{|num| num % 2 == 0}
    return total.inject(:+)
  end
end

# Optimized from previous attempt
# Broke out into separate instance methods
