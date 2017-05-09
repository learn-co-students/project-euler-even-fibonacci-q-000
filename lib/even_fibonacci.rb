def even_fibonacci_sum(limit)
    sum = 0
    i = 0
    first = 0
    second = 1
    
    while i < limit
      i = first + second
       break if i > limit
        if (i % 2 == 0)
          sum += i 
        end
      first = second
      second = i
    end
    
    return sum
    
end
