 # Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit - 1
    @fibo_array = Array.new(2,1)
    @fibo_sum = 0;
  end

  def sum
    until(@fibo_array[0] > @limit)
        @fibo_array.unshift(@fibo_array[0] + @fibo_array[1])
    end
    @fibo_array.each do |x|
      if(x % 2 == 0 && x < @limit)
        @fibo_sum += x
      end
    end
    @fibo_sum
  end
end
