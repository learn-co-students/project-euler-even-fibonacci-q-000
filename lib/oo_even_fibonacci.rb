# Implement your object-oriented solution here!
class EvenFibonacci
  @limit = 0
  def initialize(num)
    @limit = num
  end

  def sum
    prev = 1
    cur = 1
    temp = 0
    total = 0
    while(cur+prev < @limit)
      temp = cur
      cur += prev
      prev = temp
      total+=cur if(cur%2==0)
    end
    total
  end
end