require "02-todoclass"
RSpec.describe TodoList do

  test_todo = "survive"

  describe "#add" do
    it "adds a todo to the list" do
      m = TodoList.new
      m .add test_todo
      expect(m.todos[-1]).to eq test_todo
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      m = TodoList.new
      m.add test_todo
      m.remove test_todo
      expect(m.todos.include?(test_todo)).to eq false
    end
  end

  describe "#todos" do
    it "returns all todos" do
      m = TodoList.new
      (l = ["meow", "exist", "survive", "do sa-9", "do lin alg hw"]).each{|e| m.add e}
      expect(m.todos == l).to eq true
    end
  end

end
