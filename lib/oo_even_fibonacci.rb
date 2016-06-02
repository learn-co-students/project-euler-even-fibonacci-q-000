# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @array = [1, 2]
  end

  def sum
  (1..@limit).each {|number| @array << number if number == @array[(@array.count) - 2] + @array[(@array.count) - 1]}
  @array.delete_if {|number| number.odd?}.inject(0, :+)
  end
end