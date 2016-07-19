require "ch03/3.02.rb"

describe "3.2 Stack Min" do
  describe Stack do
    let(:stack) { Stack.new }

    describe "#initialize" do
      it "sets up metadata via initial vars" do
        expect(stack.size).to eq 0
      end
    end

    describe "#push" do
      it "push works on empty Stack" do
        stack.push(666)
        expect(stack.size).to eq 1
        expect(stack.min).to eq 666
      end

      it "push works on populated Stack" do
        stack.push(666)
        stack.push(711)
        expect(stack.size).to eq 2
        expect(stack.min).to eq 666
      end
    end

    describe "#pop" do
      it "returns nil for empty stack" do
        expect(stack.pop).to eq nil
      end

      it "returns value of top element in stack with 1 element" do
        stack.push(666)
        expect(stack.pop).to eq 666
      end

      it "returns value of top element in a well populated stack" do
        stack.push(1)
        stack.push(2)
        stack.push(3)
        expect(stack.pop).to eq 3
      end
    end

    describe "#min" do
      it "returns min for stack with 3>2>1" do
        stack.push(3)
        stack.push(2)
        stack.push(1)
        expect(stack.min).to eq 1
      end

      it "returns min for stack with 3>2>1 after popping" do
        stack.push(3)
        stack.push(2)
        stack.push(1)
        stack.pop
        expect(stack.min).to eq 2
      end

      it "returns min for stack with 1>2>2" do
        stack.push(1)
        stack.push(2)
        stack.push(2)
        expect(stack.min).to eq 1
      end

      it "return nil for empty stack" do
        expect(stack.min).to eq nil
      end
    end

  end
end
