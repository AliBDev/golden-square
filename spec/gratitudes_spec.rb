require "gratitudes"

RSpec.describe Gratitudes do
  it "generates an empty array" do
    gratitudes = Gratitudes.new
    result = gratitudes.format()
    expect(result).to eq "Be grateful for: "
  end

  it "adds in a single user input" do
    gratitiudes = Gratitudes.new
    gratitiudes.add("Oxygen")
    expect(gratitiudes.format).to eq "Be grateful for: Oxygen"
  end

  it "adds in multiple user inputs" do
    gratitiudes = Gratitudes.new
    gratitiudes.add("Oxygen")
    gratitiudes.add("Pizza")
    gratitiudes.add("Technology")
    expect(gratitiudes.format).to eq "Be grateful for: Oxygen, Pizza, Technology"
  end
end