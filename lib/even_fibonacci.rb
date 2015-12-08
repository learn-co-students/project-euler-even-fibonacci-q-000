# Implement your procedural solution here!

def even_fibonacci_sum(limit)
    a = 1
    b = 2
    sum = 0
    while b < limit
        if b.even?
            sum += b
        end
        a, b = b, a + b
    end
    sum
end