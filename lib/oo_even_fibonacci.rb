# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @fibonacci_array = Array.new(2,1)
    @limit = limit
  end

  def sum
    sum = 0
    i = 1

    while @fibonacci_array.last < @limit
      @fibonacci_array << (@fibonacci_array[i-1] + @fibonacci_array[i])
      i += 1
    end

    @fibonacci_array.select do |i|
      if i < @limit && i % 2 == 0
        sum += i
      end
    end
    return sum
  end
end