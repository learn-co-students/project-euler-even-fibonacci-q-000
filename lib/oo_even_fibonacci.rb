class EvenFibonacci
  attr_accessor :limit, :n1, :n2, :result

  def initialize(limit)
    @limit = limit
    @n1 = 1
    @n2 = 1
    @result = [@n1, @n2]
  end

  def sum
    fibonacci_sequence
    self.result.select {|n| n % 2 == 0}.inject {|sum, n| sum + n}
  end

  def fibonacci_sequence
    while self.n1 + self.n2 < self.limit
      add = self.n1 + self.n2
      self.result << add
      self.n1 = self.n2
      self.n2 = add
    end
    self.result
  end
end