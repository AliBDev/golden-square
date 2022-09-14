require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    my_reminder = Reminder.new("Kay")
    my_reminder.remind_me_to("Walk the dog")
    result = my_reminder.remind()
    expect(result).to eq "Walk the dog, Kay!"
  end
  context "when no task is set" do
    it "fails" do
      my_reminder = Reminder.new("Kay")
      expect { my_reminder.remind() }.to raise_error "No reminder set!"
    end
  end
end