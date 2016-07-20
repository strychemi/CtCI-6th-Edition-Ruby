require "ch03/3.04.rb"

describe "3.5 Queue via Stacks" do
  describe MyQueue do
    let(:queue) { MyQueue.new }

    describe "#initialize" do
      it "initializes instance var with empty array" do
        expect(queue.instance_variable_get(:@q)).to eq []
      end
    end

    describe "#add" do
      it "adds a first element" do
        q = queue.instance_variable_get(:@q)
        expect { queue.add(1) }.to change { q.length }.by(1)
        expect(q.first).to eq 1
      end

      it "works for already populated queue" do
        q = queue.instance_variable_get(:@q)
        queue.add(1)
        queue.add(2)
        expect { queue.add(3) }.to change { q.length }.by(1)
        expect(q.last).to eq 3
      end
    end

    describe "#remove" do
      it "returns nil for empty queue" do
        expect(queue.remove).to eq nil
      end

      it "returns value of removed element" do
        q = queue.instance_variable_get(:@q)
        queue.add(1)
        queue.add(2)
        expect(queue.remove).to eq 1
        expect { queue.remove }.to change { q.length }.by(-1)
      end
    end

    describe "#peek" do
      it "returns nil for empty queue" do
        expect(queue.peek).to eq nil
      end

      it "returns value of first element" do
        queue.add(1)
        queue.add(2)
        expect(queue.peek).to eq 1
      end
    end

    describe "#is_empty?" do
      it "returns true for empty queue" do
        expect(queue.is_empty?).to eq true
      end

      it "returns false for non empty queue" do
        queue.add(1)
        expect(queue.is_empty?).to eq false
      end
    end
  end
end
