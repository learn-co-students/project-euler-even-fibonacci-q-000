# Implement your procedural solution here!
def even_fibonacci_sum(num)
    placeholder = 1
    x = 1
    sum = 0
    while x < num
        y = x
        x = placeholder + x
        placeholder = y
        if x % 2 == 0 && x < num
            sum += x
        end
    end
    sum
end