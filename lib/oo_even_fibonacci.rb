# Implement your object-oriented solution here!
class EvenFibonacci
  
  def initialize(max)
    @max = max
  end 
  
  def sum 
    sequence = [1, 2, 3]
    current_index = 2
    current_num = sequence[current_index]
    while (current_num + sequence[current_index - 1]) <= @max
      sequence.push(current_num + sequence[current_index - 1])
      current_index += 1
      current_num = sequence[current_index]
       
    end 
    
    return sequence.select {|num| num.even?}.sum
    
  end 
  
  
end 