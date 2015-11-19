# Implement your object-oriented solution here!

class EvenFibonacci

  
  def initialize(limit)
     @limit = limit.to_i
  end 


  def sum
    sequence = [1, 2]

    while sequence[-1] < @limit
    sequence << sequence[-1] + sequence[-2]
    end

    if sequence[-1] > @limit
      sequence.pop
    end

    sum = 0
    sequence.each do |i|
      if i % 2 == 0
        sum = sum + i
      end

    end

    return sum
  end

end
