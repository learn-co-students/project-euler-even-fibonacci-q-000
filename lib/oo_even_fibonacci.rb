# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :n
  def initialize(n)
    @n = n
  end
  def fib(n)
    if n == 0 || n == 1
      n
    else
      fib(n-2) + fib(n-1)
    end
  end

  def fib_array(n)
    t_array = (2..(n.to_i + 1)).to_a
    t_array.select! {|x| x <= 34}
    t_array.map {|x| fib(x)}
  end

  def fib_array_evens(n)
    fib_evens = fib_array(n).select {|x| x % 2 == 0 && x <= n.to_i && x <= 4000000}
  end

  def sum
    fib_array_evens(n).inject(0) {|r, e| r + e}
  end
end