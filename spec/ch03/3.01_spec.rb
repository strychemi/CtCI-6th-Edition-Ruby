require "ch03/3.01.rb"

describe "3.1 Three in One" do
  describe "Many Stacks" do
    let(:stack3) { ManyStacks.new(3) }
    let(:fullstack) do
      obj = ManyStacks.new(3)
      3.times { |stack| 3.times { |val| obj.push(stack, val) } }
      return obj
    end

    describe "#initialize" do
      it "sets up instance variables correctly for default 1 stack" do
        new_obj = ManyStacks.new
        expect(new_obj.stack_size).to eq( {0 => 0} )
        expect(new_obj.top_index).to eq( {0 => -1} )
      end
    end

    describe "#push" do
      it "push(1, 2) works for 3 stacks" do
        stack3.push(1, 2)
        expect(stack3.stack_size[1]).to eq 1
        expect(stack3.top_index[1]).to eq 1
      end

      it "push(2, 666) x 2 works for 3 stacks" do
        stack3.push(2, 666)
        stack3.push(2, 666)
        expect(stack3.stack_size[2]).to eq 2
        expect(stack3.top_index[2]).to eq 5
      end

      it "pushing to different stacks works" do
        stack3.push(1, 2)
        stack3.push(2, 666)
        stack3.push(2, 666)
        expect(stack3.stack_size[1]).to eq 1
        expect(stack3.top_index[1]).to eq 1
        expect(stack3.stack_size[2]).to eq 2
        expect(stack3.top_index[2]).to eq 5
      end
    end

    describe "#pop" do
      it "pop(1) works for 3 stacks" do
        expect(fullstack.pop(1)).to eq 2
        expect(fullstack.stack_size[1]).to eq 2
        expect(fullstack.top_index[1]).to eq 4
      end

      it "pops from different stacks work" do
        expect(fullstack.pop(0)).to eq 2
        expect(fullstack.pop(1)).to eq 2
        expect(fullstack.stack_size[0]).to eq 2
        expect(fullstack.top_index[0]).to eq 3
        expect(fullstack.stack_size[1]).to eq 2
        expect(fullstack.top_index[1]).to eq 4
      end
    end

    describe "#peep" do
      it "peek sees top element" do
        expect(fullstack.peek(0)).to eq 2
      end
    end

    describe "#is_empty?" do
      it "returns false for not empty stack" do
        expect(fullstack.is_empty?(1)).to eq false
      end

      it "returns true for empty stack" do
        expect(stack3.is_empty?(0)).to eq true
      end
    end
  end
end
