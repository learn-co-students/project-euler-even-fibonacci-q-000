class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    find_even.inject(0, :+)
  end

  def find_fibonacci
    sum = 1
    nums = [sum]
    sum += sum
    begin
      nums.push(sum)
      sum += nums[-2]
    end until sum >= @limit
    nums
  end

  def find_even
    find_fibonacci.select{|num| num % 2 === 0}
  end

end
