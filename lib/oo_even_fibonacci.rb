# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :fibonacci_array, :filtered_array, :sum

  def initialize(limit)
    @first = 0
    @second = 1
    @fibonacci_array = []
    @filtered_array = filtered_fibonacci_array(limit)
    @sum = even_fibonacci_sum
  end

  def filtered_fibonacci_array(limit)
    i = 0
    while i <= limit
      i = @first + @second
      break if i > limit
      fibonacci_array << i if i.even?
      @first = @second
      @second = i
    end
    fibonacci_array
  end

  def even_fibonacci_sum
    filtered_array.reduce(:+) unless fibonacci_array.empty?
  end
end
