require "reminder"

RSpec.describe Reminder do
  context "when task is empty" do
    it "gives a error message" do
      alarm = Reminder.new("Ali")
      expect { alarm.remind() }.to raise_error "No reminder set!"
    end
  end

  it "returns 1 task when given 1 task" do
    alarm = Reminder.new("Ali")
    alarm.remind_me_to("Drink some water")
    expect(alarm.remind).to eq "Drink some water, Ali!"
  end

  it "replaces the existing task with a new task" do
    alarm = Reminder.new("Ali")
    alarm.remind_me_to("Drink some water")
    alarm.remind_me_to("Drink some coke")
    expect(alarm.remind).to eq "Drink some coke, Ali!"
  end

end

