require "ch03/3.06.rb"

describe "3.6 Animal Shelter" do
  describe AnimalShelter do
    let(:shelter) { AnimalShelter.new }
    let(:filled) do
      f = AnimalShelter.new
      f.enqueue(Animal.new("Cat", Time.now))
      f.enqueue(Animal.new("Dog", Time.now))
      f
    end

    describe "#initialize" do
      it "initializes with 2 queues for cats and dogs" do
        expect(shelter.cats).to eq []
        expect(shelter.dogs).to eq []
      end
    end

    describe "#enqueue" do
      it "adds a cat with timestamp" do
        shelter.enqueue(Animal.new("Cat", Time.now))
        expect(shelter.cats.length).to eq 1
      end

      it "adds a dog with timestamp" do
        shelter.enqueue(Animal.new("Dog", Time.now))
        expect(shelter.dogs.length).to eq 1
      end

      it "doesn't do anything if not cat or dog" do
        shelter.enqueue(Animal.new("Bear", Time.now))
        expect(shelter.cats.length).to eq 0
        expect(shelter.dogs.length).to eq 0
      end
    end

    describe "#dequeue_any" do
      it "dequeues the animal that's been admitted earlier" do
        dequeue = filled.dequeue_any
        expect(dequeue.type).to eq "Cat"
      end

      it "dequeues dog if it's been admitted earlier than cat" do
        shelter.enqueue(Animal.new("Dog", Time.now))
        shelter.enqueue(Animal.new("Cat", Time.now))
        dequeue = shelter.dequeue_any
        expect(dequeue.type).to eq "Dog"
      end
    end

    describe "#dequeue_dog" do
      it "returns a dog instance if there are dogs" do
        expect(filled.dequeue_dog.type).to eq "Dog"
      end

      it "returns nil if there are no dogs" do
        expect(shelter.dequeue_dog).to eq nil
      end
    end

    describe "#dequeue_cat" do
      it "returns a cats instance if there are cats" do
        expect(filled.dequeue_cat.type).to eq "Cat"
      end

      it "returns nil if there are no cats" do
        expect(shelter.dequeue_cat).to eq nil
      end
    end
  end
end
