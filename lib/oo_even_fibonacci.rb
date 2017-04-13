# Implement your object-oriented solution here!
class EvenFibonacci

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    fib = [0,1]
    until limit - fib[-1] < fib[-2]
      fib.push(fib[-1] + fib[-2])
    end
    fib.select {|x| x.even? }.inject(0){|sum, x| sum + x}
  end

end
