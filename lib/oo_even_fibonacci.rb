# Implement your object-oriented solution here!
class EvenFibonacci
    def initialize(limit)
        @limit = limit
    end

    def sum
        x = 1
        sum = 0
        placeholder = 0
        while x < @limit
            y = x
            x = placeholder + x
            placeholder = y
            if x % 2 == 0 && x < @limit
                sum += x
            end
        end
        sum
    end
end