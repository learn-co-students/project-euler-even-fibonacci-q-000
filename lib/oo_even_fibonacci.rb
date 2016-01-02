# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
  fib_array = [1, 2]
  sum = 0
  n = 2
  while (fib_array[n - 2] + fib_array[n - 1]) < @limit
    fib_array.push(fib_array[n - 2] + fib_array[n - 1])
    n += 1
  end
  fib_array.each do |e| 
    if e % 2 == 0
      sum += e
    end
  end
  sum
end

end

even_fibonacci = EvenFibonacci.new(4000000)

puts even_fibonacci.sum