# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  def sum
    fib = [1, 2]
    while fib[-1] < @limit
      fib.push(fib[-1] + fib[-2])
    end
    return fib.keep_if {|n|
      n.even? && n < @limit
    }.reduce(:+)
  end
end
