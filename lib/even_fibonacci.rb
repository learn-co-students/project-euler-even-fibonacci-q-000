require 'pry'

# Implement your procedural solution here!
def get_fib_nums(limit)
  fib_sequence_array = [1,2]
  next_num = 2
  until next_num > limit
    next_num = fib_sequence_array[-1] + fib_sequence_array[-2]
    fib_sequence_array << next_num if next_num < limit
    # binding.pry
  end
fib_sequence_array
end

def get_even_nums(limit)
  get_fib_nums(limit).select{|x| x % 2 == 0}
end

def even_fibonacci_sum(limit)
  get_even_nums(limit).sum
end
