# Implement your object-oriented solution here!

class EvenFibonacci
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def get_fib_nums
    limit = self.limit
    fib_sequence_array = [1,2]
    next_num = 2
    until next_num > limit
      next_num = fib_sequence_array[-1] + fib_sequence_array[-2]
      fib_sequence_array << next_num if next_num < limit
      # binding.pry
    end
  fib_sequence_array
  end

  def get_even_nums
    get_fib_nums.select{|x| x % 2 == 0}
  end

  def sum
    get_even_nums.sum
  end

end
