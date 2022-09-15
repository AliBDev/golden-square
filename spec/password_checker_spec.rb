require "password_checker"

RSpec.describe PasswordChecker do

  context "checks the validity of a password" do
    it "returns true for a password that is >= 8 characters" do
      password = PasswordChecker.new
      expect(password.check("Microwave")).to eq true
    end

    it "returns an error for a password that is < 8 characters" do
      password = PasswordChecker.new
      expect { password.check("Cat") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end