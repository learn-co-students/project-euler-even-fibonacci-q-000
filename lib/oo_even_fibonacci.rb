# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def limit= (limit)
    @limit = limit
  end

  def limit
    @limit
  end

  def fibonacci(n)
    if n.between?(0,2)
      return n
    else
      return ((fibonacci(n-1)) + (fibonacci(n-2)))
    end
  end

  def sum
    even_fibonacci_array = []
    counter = 1
    while fibonacci(counter)<@limit
      if fibonacci(counter).even?
        even_fibonacci_array << fibonacci(counter)
      end
      counter += 1
    end
    return even_fibonacci_array.reduce(:+)
  end

end
