# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    total = 2
    fib_array = [1,2]
    while ((fib_array[-1] + fib_array[-2]) <= @limit ) do
      fib_array << (fib_array[-1] + fib_array[-2])
      if (fib_array[-1] % 2 == 0)
        total += fib_array[-1]
      end
    end
    total
  end

end
