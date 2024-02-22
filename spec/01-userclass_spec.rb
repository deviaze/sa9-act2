

require "01-userclass"

RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      meow = User.new("meoow")
      expect(meow.log_in == true).to eq true
    end
  end


  describe "#log_out" do
    it "logs the user out" do
      meow = User.new "meoww"
      expect(meow.log_out).to eq false
    end
  end

  describe "username" do
    it "returns the correct username" do
      username = "ee"
      m = User.new(username)
      expect(m.username).to eq username
    end
  end

end
