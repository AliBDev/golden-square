require "gratitudes"

RSpec.describe Gratitudes do
  it "returns something to be grateful for" do
    item = Gratitudes.new
    item.add("Coffee")
    expect(item.format).to eq "Be grateful for: Coffee"
  end

  it "returns only the pre-formatted text" do
    item = Gratitudes.new
    expect(item.format).to eq "Be grateful for: "
  end

  it "adds multiple array items to the existing array" do
    item = Gratitudes.new
    item.add("Pizza")
    item.add("Cookies")
    item.add("MacBook's")
    expect(item.format).to eq "Be grateful for: Pizza, Cookies, MacBook's"
  end

end