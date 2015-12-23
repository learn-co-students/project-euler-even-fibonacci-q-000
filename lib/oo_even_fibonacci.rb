# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  def sum
  sum = 0
  a,b = 1,2
  while (b < @limit)
    if ( b % 2 == 0 )
       sum += b
    end
    a,b = b, a+b
   end
  return sum
end
end
