class EvenFibonacci
  def initialize(limit)
    @even_sum = 0
    @limit = limit
  end

  def sum    
    first_fibonacci, second_fibonacci = 1, 1

    while second_fibonacci < @limit
      @even_sum += second_fibonacci if second_fibonacci.even?

      fibonacci = first_fibonacci + second_fibonacci

      first_fibonacci, second_fibonacci = second_fibonacci, fibonacci
    end

    @even_sum
  end
end