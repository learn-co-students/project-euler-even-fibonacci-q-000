# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    x = 0
    y = 1
    sum_of_evens = 0
    while x<limit do 
        z = x+y
        x = y
        y = z
        sum_of_evens+=z if z.even? && z < limit
    end 
    sum_of_evens
end

#even_fibonacci_sum(4000000)