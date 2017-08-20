class EvenFibonacci

  attr_reader :num

  def initialize(num)
    @num = num
  end  

  def sum
    array = []
    i = 0
    first = 0
    second = 1

    while i < num
      i = first + second
      break if i > num
      array << i if i.even?
      first = second
      second = i
    end  
    array.inject(:+)
  end  

end  