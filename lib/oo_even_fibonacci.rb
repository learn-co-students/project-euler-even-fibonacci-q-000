# Implement your object-oriented solution here!
# Implement your procedural solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @fibonacci_nums = [1]
    @next_fib = 2
    @even_sum = 0
  end

  def sum
    while @next_fib < @limit
      @fibonacci_nums << @next_fib
      #binding.pry
      @even_sum += @next_fib if @next_fib % 2 == 0
      @next_fib += @fibonacci_nums[-2]
    end
    @even_sum
  end
end

