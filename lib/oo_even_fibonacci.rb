# Implement your object-oriented solution here!

require_relative 'even_fibonacci'

class EvenFibonacci
  def initialize(limit = 2)
    @sum = even_fibonacci_sum(limit)
  end
  
  def sum
    @sum
  end
end
