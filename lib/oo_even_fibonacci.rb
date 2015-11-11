# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum

    # Create a fibonacci array up to a given integer
    fib_array = [1,1]
    
    while fib_array[-2] + fib_array[-1] < @limit 
      fib_array << fib_array[-2] + fib_array[-1]
    end

    # Sum numbers in array if even
    sum = 0
    fib_array.each { |x| sum += x if x.even? }

    #return sum
    sum
  end

end