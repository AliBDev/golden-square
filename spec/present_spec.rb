require "present"

RSpec.describe Present do
  it "wraps and unwraps a value" do
    present = Present.new
    present.wrap(6)
    expect(present.unwrap).to eq 6
  end
end
