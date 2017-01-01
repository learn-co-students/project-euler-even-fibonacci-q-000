# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    fibs = [1,1]
    while (new_fib = fibs[-1] + fibs[-2]) < @limit do
      fibs << new_fib
    end
    fibs.inject(0) { |sum, i| i.even? ? sum + i : sum }
  end

end