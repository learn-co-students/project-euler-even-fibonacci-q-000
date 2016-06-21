# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    fib_sum = 0
    @limit.times do |number|
      f= fibonacci(number)
      if (f < @limit) && (f % 2 == 0)
        fib_sum += f
      end
      if f > @limit
        return fib_sum
      end
    end
  end

  def fibonacci(n)
    if (n == 0) || (n == 1)
      return 1
    else
      return (fibonacci(n-1)+fibonacci(n-2))
    end
  end
end
