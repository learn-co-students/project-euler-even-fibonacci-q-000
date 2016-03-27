# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    fibonacci_seq = [nil, 1, 2]
    i = 3 #next number in fibonacci sequence
    while true
      fibonacci_seq[i] = fibonacci_seq[i-1] + fibonacci_seq[i-2]
      if fibonacci_seq[i] >= @limit
        fibonacci_seq.delete(fibonacci_seq[i])
        break
      end
      i += 1
    end
    #  use #compact method to remove nil from fibonacci_seq
    result = fibonacci_seq.compact.inject(0) do |total, num|
    total += num if num % 2 == 0
    total
   end
    return result
  end

end
