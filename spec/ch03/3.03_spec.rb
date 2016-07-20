require "ch03/3.03.rb"

describe SetOfStacks do
  let(:default) { SetOfStacks.new }

  describe "#initialize" do
    it "sets @threshold to 10 by default" do
      expect(default.instance_variable_get(:@threshold)).to eq 10
    end

    it "sets @threshold to whatever is given as argument" do
      expect(SetOfStacks.new(100).instance_variable_get(:@threshold)).to eq 100
    end
  end

  describe "#push" do
    it "first push adds to first stack" do
      default.push(666)
      expect(default.instance_variable_get(:@s)).to eq [[666]]
    end

    it "push past threshold adds another stack" do
      11.times { default.push(1) }
      actual = default.instance_variable_get(:@s)
      expect(actual[-1]).to eq [1]
      expect(actual.length).to eq 2
    end
  end

  describe "#pop" do
    it "pop returns the top-most plate of the rightmost stack" do
      5.times { default.push(1) }
      popped_value = default.pop
      actual = default.instance_variable_get(:@s)
      expect(actual[-1].length).to eq 4
      expect(popped_value).to eq 1
    end

    it "popping first plate of a substack removes that stack" do
      11.times { default.push(1) }
      expect { default.pop }.to change { default.instance_variable_get(:@s).length }.by(-1)
    end
  end

  describe "#pop_at" do
    it "specifying a stack index that doesn't exist returns nil" do
      5.times { default.push(1) }
      popped_value = default.pop_at(666)
      expect(popped_value).to eq nil
    end

    it "should behave the same as pop for a valid stack_index" do
      11.times { default.push(1) }
      expect { default.pop_at(2) }.to change { default.instance_variable_get(:@s).length }.by(-1)
    end
  end
end
