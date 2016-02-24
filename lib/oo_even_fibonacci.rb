# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def fibonacci_generator
    current_num = 1
    next_num = 2
    temp_num = 1
    fib_array = []

    while current_num < @limit
      fib_array.push(current_num)
      temp_num = current_num
      current_num = next_num
      next_num = next_num + temp_num
    end

    return fib_array
  end

  def sum
    all_fibs = fibonacci_generator()
    
    even_fibs = all_fibs.select do |item|
      item % 2 == 0
    end

    sum_of_fibs = 0
    even_fibs.each do |item|
      sum_of_fibs += item
    end

    return sum_of_fibs
  end
end