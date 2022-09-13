require "report_length"

RSpec.describe "report_length method" do
	it "returns an error if the number of characters does not match the given string" do
		result = report_length("dog")
		expect(result). to eq "This string was 3 characrters long."
	end
end