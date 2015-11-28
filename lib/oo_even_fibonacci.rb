# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @array = [1, 2]
    i = 0

    loop do
      i = @array[@array.size - 1] + @array[@array.size - 2]
      if i < limit
        @array << i
      else
        break
      end
    end

  end

  def sum
    sum = 0
    @array.each do |i|
      if i.even?
        sum += i
      end
    end
    return sum
  end

end