def even_fibonacci_sum(limit)
  sum = 1
  nums = [0, sum]
  sum += sum
  begin
    nums << sum
    sum += nums[-2]
  end while sum < limit
  nums.select{|num| num.even?}.inject(0, :+)
end
