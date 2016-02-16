class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end

  def sum
    arr = [1,2]
    count = 2
    a = 0
    b = 1

    while count < @limit
      number = (arr[a] + arr[b])
      arr << number
      a += 1
      b += 1
      count += 1
    end

    arr.each do |even|
      arr.delete_if &:odd?
      arr.delete_if {|x| x >= @limit}
    end
    arr.inject(0, :+)
  end
end