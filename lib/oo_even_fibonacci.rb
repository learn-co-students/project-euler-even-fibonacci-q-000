# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
  x, z = 1, 2
  sum = 0

  while (z < @limit)
    if ( z % 2 == 0)
      sum += z
    end
    x, z = z, x + z
  end
  return sum

  end

end
