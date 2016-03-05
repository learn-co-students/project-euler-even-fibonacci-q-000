# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @fib_array = create_fib_array
  end

  def create_fib_array
    array = [1, 2]
    return @limit if @limit == 1
    while array[array.length - 1] + array[array.length - 2] <= @limit do
      array.push(array[array.length - 1] + array[array.length - 2])
    end
    array
  end

  def sum
    sum = 0
    @fib_array.each do |value|
      sum += value if value.even?
    end
    sum
  end
end