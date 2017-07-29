# Implement your object-oriented solution here!

class EvenFibonacci
  attr_reader :fibonacci_arr, :filtered_arr, :sum

  def initialize(limit)
    @first = 0
    @second = 1
    @fibonacci_arr = []
    @filtered_arr = filtered_fibonacci_arr(limit)
    @sum = even_fibonacci_sum
  end

  def filtered_fibonacci_arr(limit)
    i = 0
    while i < limit
      i = @first + @second
      break if i > limit
      @fibonacci_arr << i if i.even?
      @first = @second
      @second = i
    end
    fibonacci_arr
  end

  def even_fibonacci_sum
    # filtered_arr.reduce(:+) unless fibonacci_arr.empty?
    filtered_arr.inject{|total, num| total + num}
  end
end
