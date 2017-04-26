# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :first, :second, :limit, :sum

  def initialize(limit)
    @first = 0
    @second = 1
    @limit = limit
    even_fib = even_fib_array(@limit)
    @sum = even_array_sum(even_fib)
  end

  def even_fib_array(limit)
    i = 0
    even_fib = []
    while i < limit
      i = @first + @second
      break if i > limit
      even_fib << i if i % 2 == 0
      @first = @second
      @second = i
    end
      even_fib
  end

  def even_array_sum(array)
    if !array.empty?
      array.reduce(:+)
    end
  end
end