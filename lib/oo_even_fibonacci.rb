# Implement your object-oriented solution here!
class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def limit
    @limit
  end

  def sum
    fibbonacci = [1,2]
    next_number = 0
    sum = 0
    counter = 1
    until next_number >= limit
      next_number = fibbonacci[counter] + fibbonacci[counter - 1]
      fibbonacci << next_number
      counter += 1
    end
    if fibbonacci[counter] > limit
      fibbonacci.pop
    end
    fibbonacci.each do |number|
      if number.even?
        sum += number
      end
    end
    return sum
  end
end
