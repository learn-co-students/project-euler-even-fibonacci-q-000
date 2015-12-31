# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    fib_list = fib
    evens = fib_list.select {|i| i.even?}
    return evens.inject(:+)
  end

  def fib
    fib_array = Array.new
    a = 0
    b = 1
    fib_array << a
    fib_array << b
    while b < @limit
      c = a+b
      a = b
      b = c
      if b <= @limit
        fib_array << b
      end
    end
    return fib_array
  end
end
puts "#{EvenFibonacci.new(10).sum}"