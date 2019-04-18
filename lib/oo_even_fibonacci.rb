# Implement your object-oriented solution here!
class EvenFibonacci

    def initialize(limit)
        @limit = limit
    end

    def sum
        result = [1,2]
        
        # [1,2,3,4,5,6,7,8,9,10]
        while (result.last + result[result.length-2]) < @limit do
            
            num = result.last + result[result.length-2]
    
            result.push(num)
    
        end
    
        return result.select(&:even?).sum#inject(:+)
    end

end