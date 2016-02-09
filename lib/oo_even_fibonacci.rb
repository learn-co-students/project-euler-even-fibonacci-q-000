# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
def sum
  i = 0
  j = 1
  array = []
  while j <= @limit
    array << j
    j = array[i] + array[i-1]
    i += 1
  end
  array.select{|num| num % 2 == 0}.inject{|sum,num| sum+num}
end
end