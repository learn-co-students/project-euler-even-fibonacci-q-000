# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit
  def initialize(limit)
    self.limit = limit
  end
  def sum
    fib = [1, 2]
    num = 2
    loop do
      break if fib[num - 1] + fib[num - 2] > self.limit
      fib[num] = fib[num - 1] + fib[num - 2]
      num += 1
    end
    fib.select{|num| num.even?}.reduce(:+)
  end
end