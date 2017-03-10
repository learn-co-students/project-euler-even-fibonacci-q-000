def even_fibonacci_sum(limit)
  find_even(limit).inject(0, :+)
end

def find_fibonacci(limit)
  sum = 1
  nums = [sum]
  sum += sum
  begin
    nums.push(sum)
    sum += nums[-2]
  end until sum >= limit
  nums
end

def find_even(limit)
  find_fibonacci(limit).select{|num| num % 2 === 0}
end
