# Implement your object-oriented solution here!
class EvenFibonacci
 attr_reader :num

  def initialize(num)
    @num = num
  end

  def sum
    sum = 0
    previous = 0
    current = 1

    while current <= num
      sum += current if current.even?
      current, previous = previous, previous + current
    end
      sum
  end

end
