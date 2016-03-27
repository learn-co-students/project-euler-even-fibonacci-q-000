# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def limit
    @limit
  end

  def sum
  array = [1,2]
  sum = 0
  n = 2
    while (array[n - 2] + array[n - 1]) < @limit
      array << (array[n - 2] + array[n - 1])
      n += 1
    end
    array.each do |num|
      if num % 2 == 0
        sum += num
      end
    end
    sum
  end

end