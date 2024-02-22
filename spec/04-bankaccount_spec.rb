require "04-bankaccount"

RSpec.describe BankAccount do

  describe "#deposit" do
    it "increases balance by deposited amount" do
      amt = 123
      baa = BankAccount.new
      baa.deposit amt
      expect(baa.balance).to eq amt
    end
  end

  describe "#withdraw" do
    boo = BankAccount.new

    it "decreases balance by withdrawl amount if amt <= balance" do
      boo.deposit 300
      boo.withdraw 50
      expect(boo.balance).to eq 250
    end

    it "doesn't change bal if amt > balance" do
      boo.withdraw 1*10**2
      expect(boo.balance).to eq 150
    end
  end

  describe "#balance" do
    bally = BankAccount.new 50
    it "returns the current balance" do
      bally.deposit 50
      expect(bally.balance).to eq 100
    end
  end

end
