# Implement your object-oriented solution here!
class EvenFibonacci
  @limit

  def initialize(limit)
    @limit = limit
  end

  def sum ()
    start = 0
    incr = 1
    result = 0
    s = 0

    while (result < @limit) do
      if start + incr > @limit
        break
      end

      result = start + incr

      if result % 2 == 0
        s += result
      end

      start = incr
      incr = result
    end

    return s
  end
end