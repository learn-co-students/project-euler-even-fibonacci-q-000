# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit = nil)
    @limit = limit
  end

  def sum
    sequence = [1,2]
    while sequence[-1] < @limit
      sequence.push(sequence[-1] + sequence[-2])
    end
    return sequence.keep_if{|num| num.even? && num < @limit}.reduce(:+)
  end
end

