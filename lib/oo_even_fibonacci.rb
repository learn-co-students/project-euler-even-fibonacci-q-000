# Implement your object-oriented solution here!

class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    summable = Array.new
    num1, num2 = 1, 2
    while num2 < @limit do
      if num2 % 2 == 0
          summable.push(num2)
      end
       num1, num2 = num2, num1 + num2
    end
    return summable.reduce(:+)
  end
end


