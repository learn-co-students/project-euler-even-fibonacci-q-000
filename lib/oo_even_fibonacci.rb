# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end
  def sum

    f1 = 1
    f2 = 2
    sum = 0
    until f2 >= @limit
      if f2 % 2 == 0
        sum += f2
      end
      f3 = f1 + f2
      f1 = f2
      f2 = f3
    end
    sum
  end

end
