# Implement your object-oriented solution here!


class EvenFibonacci

  attr_writer :arr
  attr_reader :limit 

  def initialize(limit)
    @arr = [1,2]
    @limit = limit 
  end

  def evens_only
    while @arr.last + @arr[-2] < limit
    @arr << @arr.last + @arr[-2]
    end
    @arr.select { |num| num.even? }
  end 

  def sum
    evens_only.inject { |x,y| x + y }
  end

end