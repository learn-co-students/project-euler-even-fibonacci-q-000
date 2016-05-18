# Implement your object-oriented solution here!
require 'pry'

class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @even_fibs = []
  end

  def even_fibs
    fib = 1
    fib_sec = 1
    while fib_sec < @limit
      fib_new = fib + fib_sec
      fib = fib_sec
      fib_sec = fib_new
      @even_fibs << fib_sec if (fib_sec < @limit) && (fib_sec %2 == 0)
    end
  end

  def sum
    even_fibs
    sum = @even_fibs.inject(:+)
  end

end
