# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(n)
    @fibo = [1, 2]
    while @fibo[-1] < n
      @fibo << (@fibo[-1] + @fibo[-2])
    end
    @fibo.pop
  end
  def sum
    sum = 0
    @fibo.each {|n| sum += n if n.even?}
    sum
  end
end
