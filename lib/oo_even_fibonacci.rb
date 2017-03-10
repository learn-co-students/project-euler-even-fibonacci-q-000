class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    sum = 1
    nums = [0, sum]
    sum += sum
    begin
      nums << sum
      sum += nums[-2]
    end while sum < @limit
    nums.select{|num| num.even?}.inject(0, :+)
  end

end
