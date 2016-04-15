# Implement your object-oriented solution here!

class EvenFibonacci
  
  def initialize(limit)
    @limit = limit
    
  end
  
  def sum
    calculate
  end
  
  def calculate
    f1, f2, fib, sum = 0, 1, 0, 0

    while fib < @limit
      sum += fib if fib%2 == 0
      f1, f2 = f2, f1 + f2
      fib = f1 + f2
    end
    sum
  end
  
end  
  
