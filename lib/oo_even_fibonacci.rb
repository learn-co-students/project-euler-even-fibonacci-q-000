class EvenFibonacci
  def initialize (limit)
    @limit = limit
    @fibonacci_numbers_array = []
  end

  def sum
    last_number = 1
    preview_number = 0
    even_fibonacci_sum = 0
    while last_number + preview_number <= @limit
      @fibonacci_numbers_array << (last_number + preview_number)
      preview_number = last_number
      last_number = @fibonacci_numbers_array.last
      even_fibonacci_numbers = @fibonacci_numbers_array.select{|fibonacci_number| fibonacci_number.even?}
      even_fibonacci_sum = even_fibonacci_numbers.reduce(:+) || 0
    end
    even_fibonacci_sum
  end
end

