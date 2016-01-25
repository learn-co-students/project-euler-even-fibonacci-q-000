def even_fibonacci_sum(limit)
  total = 0
  first, second = 0,1 
  while second < limit
    # first gets assigned to second and second gets first + second
    first, second = second, first + second
    # even numbers are added to total
    if first % 2 == 0 
     total += first
    end
  end
  total
end

