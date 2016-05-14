# Implement your procedural solution here!

def fibonacci_values_by_limit(limit)
  values = [1]
  new_value = 2;
  until (new_value >= limit) do
    values << new_value
    new_value = values[-1] + values[-2]
  end
  values
end

def even_fibonacci_sum(limit)
  fibonacci_values_by_limit(limit).inject(0) do |sum, n|
    inject_value = 0
    inject_value = n if (n % 2 == 0)
    sum + inject_value
  end
end
