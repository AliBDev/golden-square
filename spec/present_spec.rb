require "present"

RSpec.describe Present do

  context "contents have already been wrapped" do
    it "gives an error if trying to wrap again" do
      gift = Present.new
      gift.wrap("Toy")
      expect { gift.wrap("PS5") }.to raise_error "The contents have already been wrapped."
    end
  end

  context "no contents are wrapped yet" do
    it "gives an error if trying to unwrap" do
      gift = Present.new
      expect { gift.unwrap }.to raise_error "No contents have been wrapped."
    end
  end
end



