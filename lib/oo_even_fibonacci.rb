class EvenFibonacci
  def initialize(num)
    @num = num
  end

  def sum
  	fib_array = [1,2]
  	fib_sum = fib_array[-1]

  	while fib_sum < @num + 1
  		fib_sum += fib_array[-1]
  		fib_array = fib_array.push(fib_array[-1] + fib_array[-2])
  	end

  	total_evens = 0
  	fib_array.each do |element|
  		if element.even?
  			total_evens += element
  		end
  	end
  	return total_evens
  end
end
