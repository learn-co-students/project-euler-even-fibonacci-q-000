# Implement your procedural solution here!
def even_fibonacci_sum(limit)
    result = [1,2]
    
    # [1,2,3,4,5,6,7,8,9,10] Limit sample set
    while (result.last + result[result.length-2]) < limit do
        
        num = result.last + result[result.length-2]

        result.push(num)

    end

    return result.select(&:even?).sum#inject(:+)
end