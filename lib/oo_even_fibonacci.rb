# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    arr = []
    i, first, second = 0, 0, 1
    while i < @limit
      i = first + second
      break if i > limit
      arr << i if i.even?
      first = second
      second = i
    end
    arr.inject(:+)
  end
end
