# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    fibSum = 0
    a,b = 1,2
    while (b < @limit)
      if (b % 2 == 0)
        fibSum += b
      end
      a,b = b, a+b
      end
      return fibSum
  end
end
