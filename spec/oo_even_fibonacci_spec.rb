describe "EvenFibonacci" do
  describe "#sum" do
    it 'returns the correct sum when the limit is 10' do
      expect(EvenFibonacci.new(10).sum).to eq(10)
    end

    it 'returns the correct sum when the limit is 100' do
      expect(EvenFibonacci.new(100).sum).to eq(44)
    end

    it 'returns the correct sum when the limit is 4000000' do
      expect(EvenFibonacci.new(4000000).sum).to eq(4613732)
    end
  end
end
