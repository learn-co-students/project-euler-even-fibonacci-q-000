# Implement your object-oriented solution here!
class EvenFibonacci

attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    a = 1
    b = 2
    fib = [a, b]
    result = 0
    while a + b < @limit do
      sum = a + b
      fib << sum
      a = b
      b = sum
    end
    fib.each do |i|
      if i%2 == 0
        result += i
      end
    end
    result
  end
end
