# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    @fibonacci1 = 1
    @fibonacci2 = 2
    @fibonacci3 = 3
    @array = [1, 2, 3]
    @fibonacci4 = 0

    while @fibonacci4 < @limit 
          @fibonacci4 = (@fibonacci2 + @fibonacci3)
          @array << @fibonacci4
          @fibonacci1 = @fibonacci2
          @fibonacci2 = @fibonacci3
          @fibonacci3 = @fibonacci4
          @fibonacci4 = (@fibonacci2 + @fibonacci3)
    end

    @array.delete_if {|x| x.odd? != false}
    puts "Array"
    puts @array
    @sum = @array.reduce(:+)
    puts "And Sum:"
    return @sum
  end
  
end