require 'counter'

RSpec.describe Counter do
  it "returns what has been counted so far" do
    counter = Counter.new # Creates a new insatnce of the Counter class
    counter.add(3) # counter here is the name of the variable from line 5. Then accessing the methods from that class
    result = counter.report()
    expect(result).to eq "Counted to 3 so far."
  end
end
