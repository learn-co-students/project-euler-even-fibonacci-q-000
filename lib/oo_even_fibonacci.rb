# Implement your object-oriented solution here!

class EvenFibonacci
  def initialize(limit)
  	@limit = limit
  end

  def sum
    total = 0
    left = 0
    right = 1

    while right < @limit
      total += right if right % 2 == 0
      
      x = right
      right = right + left
      left = x
    end

    total
  end
end
