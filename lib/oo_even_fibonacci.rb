# Implement your object-oriented solution here!
class EvenFibonacci
    
    def initialize(limit)
        @limit = limit
    end
    
    def sum
        x = 0
        y = 1
        sum_of_evens = 0
        while x<@limit do 
            z = x+y
            x = y
            y = z
            sum_of_evens+=z if z.even? && z < @limit
        end 
        sum_of_evens
    end
end