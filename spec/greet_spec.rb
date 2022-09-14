require 'greet'

RSpec.describe "greet_method" do
	it "greets the user with: Hello & THEIR_NAME_HERE!" do
		result = greet("Ali")
		expect(result).to eq "Hello, Ali!"
	end
end
