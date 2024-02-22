require "03-stringwrapper"

RSpec.describe StringWrapper do

  describe "#reverse" do
    it "returns the reversed string" do
      s = StringWrapper.new("reeee")
      expect(s.reverse).to eq "reeee".reverse
    end
  end

  describe "#upcase" do
    it "returns uppercased string" do
      s = StringWrapper.new("moo")
      expect(s.upcase).to eq "moo".upcase
    end
  end

  describe "#downcase" do
    it "returns downcaseded string" do
      s = StringWrapper.new "DepressioN"
      expect(s.downcase).to eq "DepressioN".downcase
    end
  end

end
