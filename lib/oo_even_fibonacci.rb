# Implement your object-oriented solution here!
class EvenFibonacci
  attr_accessor :limit, :fibArr, :sum, :lastNum

  def initialize(limit)
    @limit = limit
    @fibArr = [1, 2]
    @lastNum = 2
    @sum = 0
  end

  def sum
    while @lastNum < @limit do
      @sum += @lastNum if @lastNum.even?
      nextNum = @fibArr[@fibArr.length - 1] + @fibArr[@fibArr.length - 2]

      @fibArr.push(nextNum)
      @lastNum = nextNum
    end

    return @sum
  end

end