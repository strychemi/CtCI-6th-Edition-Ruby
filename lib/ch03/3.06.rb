# Animal Shelter

# Assuming Ruby array = queue for simplicity (check 3.02.rb for real stack)
# but still solving this in spirit of the problem
Animal = Struct.new(:type, :time)

class AnimalShelter

  attr_reader :cats, :dogs

  def initialize
    @cats = []
    @dogs = []
  end

  def enqueue(animal)
    if animal.type == "Cat"
      @cats << animal
    elsif animal.type == "Dog"
      @dogs << animal
    end
  end

  def dequeue_any
    if @cats.first.time < @dogs.first.time
      return @cats.shift
    else
      return @dogs.shift
    end
  end

  def dequeue_dog
    return @dogs.empty? ? nil : @dogs.shift
  end

  def dequeue_cat
    return @cats.empty? ? nil : @cats.shift
  end
end
