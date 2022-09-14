require "string_builder"

RSpec.describe StringBuilder do
  it "adds 1 string to an empty string" do
    text = StringBuilder.new
    text.add("Wednesday")
    outcome = text.output
    expect(outcome).to eq "Wednesday"
  end
  
  it "adds 1 string to another existing string" do
    text = StringBuilder.new
    text.add("Wednesday")
    text.add("Thursday")
    outcome = text.output
    expect(outcome).to eq "WednesdayThursday"
  end

  it "returns an empty string" do
    text = StringBuilder.new
    expect(text.output).to eq ""
  end

  it "returns the length of the string" do
    text = StringBuilder.new
    text.add("Cat")
    expect(text.size).to eq 3    
  end
end