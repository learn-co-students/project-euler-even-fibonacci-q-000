# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  def sum
    fibonacci_series = [1, 2]
    sum = 2
    while fibonacci_series[-2] + fibonacci_series[-1] <= @limit do
      if (fibonacci_series[-2] + fibonacci_series[-1]) % 2 == 0
        sum += fibonacci_series[-2] + fibonacci_series[-1]
      end
      fibonacci_series << fibonacci_series[-2] + fibonacci_series[-1]
    end
    sum
  end
end