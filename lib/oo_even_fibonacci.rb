# Implement your object-oriented solution here!
class EvenFibonacci
  @limit
  def initialize(limit)
    @limit = limit
  end
  def sum
  array = [1,2]
  while array.last(2).inject(:+) <= @limit
    p array.push(array.last(2).inject(:+))
  end

  p array.select {|i| i % 2 == 0 }.inject(:+)
end
end