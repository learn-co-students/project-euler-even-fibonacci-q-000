# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :lim
  def initialize(lim)
    @lim = lim
  end

  def sum
    array = lim > 1 ? [1, 1] : []
    if !array.empty?
      until array[-1] + array[-2] > lim
      array << array[-1] + array[-2]
      end
      array = array [1..-1]
    end
    array.select {|num| num.even?}.inject(:+)
  end
end