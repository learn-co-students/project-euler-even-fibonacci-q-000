# Implement your object-oriented solution here!
class EvenFibonacci
  
  def initialize(limit)
    @limit = limit
  end

  def sum
    fib = [1, 2]
    fib_even = [2]
    result = 0
    fib_next = 0
  
    i = 2
    loop do
      fib_next = (fib[i - 2] + fib[i - 1])
        fib << fib_next
      if fib_next >= @limit
        break
      end
        if fib_next % 2 == 0
          fib_even << fib_next
        end
      i += 1
    end

    j = 0
    while j < fib_even.length
      result += fib_even[j]
      j += 1
    end

    result
  end

end