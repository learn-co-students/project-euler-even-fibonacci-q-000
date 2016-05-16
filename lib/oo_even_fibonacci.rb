# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(num)
    @f1 = 0
    @f2 = 1
    @board = []
  end

  def even_fibonacci_sum
    while fn < num
      fn = @f1 + @f2
      break if fn > num
      board << fn if fn.even?
      @f1 = @f2
      @f2 = @fn
    end
    @board.inject(:+)
  end
end
