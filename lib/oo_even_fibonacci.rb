# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @sequence = [1,2]
  end

  def sum
    while @sequence[-1] < @limit
      @sequence.push(@sequence[-1] + @sequence[-2])
    end
    @sequence.keep_if{|num| num.even? && num < @limit}.reduce(:+)
  end
end


