# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    
    fib = [1, 2]

    while fib[-1] < @limit
      fib << fib[-1] + fib[-2]
    end

    fib.select {|num|
      num.even? && num < @limit
    }.reduce(:+)

  end

end