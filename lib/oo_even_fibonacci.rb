# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :limit, :evens

  def initialize(limit)
    @limit = limit
    @evens = even_fibonacci
  end

  def even_fibonacci
    index = 1
    array = [1, 2]
    while array[index] + array[index-1] <= @limit
      array << array[index] + array[index -1]
      index+= 1
    end
    array.reject{|i| i.odd?}
  end

  def sum
    evens.inject(:+)
  end
end
