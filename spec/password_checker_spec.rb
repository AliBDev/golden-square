require "password_checker"
RSpec.describe PasswordChecker do
    it "Checks if password length is greater than 8" do
      passwordchecker = PasswordChecker.new
      expect(passwordchecker.check("makersacademy")).to eq true
    end
it "fails if password is less than 8" do
    passwordchecker = PasswordChecker.new
    expect {passwordchecker.check("makers")}.to raise_error "Invalid password, must be 8+ characters."
end
end