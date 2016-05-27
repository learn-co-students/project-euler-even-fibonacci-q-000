# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    array = [1,2]
    index = 2
    i = 2
    while i < self.limit
      
      i = (array[index - 1] + array[index - 2])
      if i < self.limit
        array << i
      end
      index += 1
    end
    even_array = array.select {|num| num.even?}
    even_array.reduce {|sum, i| sum + i}
  end
end