def even_fibonacci_sum(limit)
    fib_array = [1,2]

    while fib_array[-1] + fib_array[-2] <= limit
        fib_array << fib_array[-2] + fib_array[-1]
    end

    fib_array.select { |n| n % 2 == 0 }.reduce(:+)
end
