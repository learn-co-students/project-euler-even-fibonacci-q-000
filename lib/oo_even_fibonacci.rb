# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit

  def initialize(limit)
    self.limit = limit
  end

  def fibonacci_values_by_limit
    values = [1]
    new_value = 2;
    until (new_value >= self.limit) do
      values << new_value
      new_value = values[-1] + values[-2]
    end
    values
  end

  def sum
    fibonacci_values_by_limit.inject(0) do |sum, n|
      inject_value = 0
      inject_value = n if (n % 2 == 0)
      sum + inject_value
    end
  end

end
