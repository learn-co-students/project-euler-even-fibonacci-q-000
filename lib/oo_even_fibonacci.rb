class EvenFibonacci
  attr_reader :sum

  def initialize(limit)
    @limit = limit
    @first = 0
    @second = 1
    @final_array = []
    @sum = find_evens
  end

  def find_evens
    index = 0

    while index < @limit
      index = @first + @second
      break if index > @limit
      @final_array << index if index.even?
      @first = @second
      @second = index
    end
    @final_array.reduce(:+)
  end
end
