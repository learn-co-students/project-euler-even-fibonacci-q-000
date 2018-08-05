class EvenFibonacci
    attr_reader :limit

    def initialize(limit)
      @limit = limit
    end

    def fib_array
      fib = [1,2]

      while fib[-1] + fib[-2] <= limit
        fib << fib[-1] + fib[-2]
      end
      
      fib
    end

    def sum
      fib_array.select { |n| n % 2 == 0 }.reduce(:+)
    end
end
