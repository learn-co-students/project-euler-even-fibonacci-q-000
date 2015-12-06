# Implement your object-oriented solution here!

class EvenFibonacci 
  def initialize(limit)
    @limit = limit 
  end 


  def sum 

    fib_array = [1,1]
  
    until (fib_array[-1] + fib_array[-2]) >= @limit do 
      fib_array.push(fib_array[-1] + fib_array[-2])
    end

    fib_array.select { |num| num.even? }.inject { |sum, n| sum + n}

  end 
end