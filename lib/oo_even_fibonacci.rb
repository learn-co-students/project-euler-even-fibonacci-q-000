# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

def sum
  output = [1]
  count = 1
  loop do 
    count = output[output.length-1] + output[output.length-2] || output[output.length-1] + 1
    output.push(count) if count < @limit
    break if count >= @limit
end
  output.select { |x| x% 2 == 0 }.reduce(:+)
end

end