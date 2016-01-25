class EvenFibonacci
  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def sum
    total = 0
    first, second = 0,1
    while second < limit
      first, second = second, first + second
      if first % 2 == 0
        total += first
      end
    end
    total
  end
end
