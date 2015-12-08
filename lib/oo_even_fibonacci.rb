# Implement your object-oriented solution here!

class EvenFibonacci
    def initialize(limit)
        a = 1
        b = 2
        sum = 0
        while b < limit
            if b.even?
                sum += b
            end
            a, b = b, a + b
        end
        @sum = sum
    end

    def sum
        @sum
    end

end