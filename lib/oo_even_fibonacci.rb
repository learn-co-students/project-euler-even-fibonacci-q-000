# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def fibonacci(n)
    n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
  end

  def sum
    i = 0
    fibonacci_array = []

    while fibonacci(i) <= @limit
      fibonacci_array.push(fibonacci(i))
      i += 1
    end
    even_fib_sum = 0

    fibonacci_array.each do |number|
      if number % 2 == 0
        even_fib_sum += number.to_i
      end
    end
    even_fib_sum
  end
end