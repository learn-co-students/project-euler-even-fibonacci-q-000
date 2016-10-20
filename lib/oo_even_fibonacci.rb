# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  def sum
    counter = 1
    sum_total = 0
    fibo = [1,2]
    while fibo[counter] < @limit
      if fibo[counter]%2==0
        sum_total +=fibo[counter]
      end
      fibo.push(fibo[counter]+fibo[counter-1])
      counter +=1
    end
    return sum_total
  end
end
