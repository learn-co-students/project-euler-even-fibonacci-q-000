# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    array = [1,2]
    n = 0
    while array[n] < @limit
      array << array[n] + array[n + 1]
      n += 1
    end
    array.delete_if{ |n| n.odd? || n > @limit}.reduce(:+)
  end

end
