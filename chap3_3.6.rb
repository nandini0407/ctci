class AnimalShelter

  def initialize
    @animals = []
    @dogs = []
    @cats = []
  end

  def enqueue(name, type)
    @animals << { name: name, type: type }
    if type == :dog
      @dogs << name
    else
      @cats << name
    end
  end

  def dequeue_any
    if @animals[0][:type] == :dog
      @dogs.shift
    else
      @cats.shift
    end
    @animals.shift[:name]
  end

  def dequeue_dog
    name = @dogs.shift
    dog = { name: name, type: :dog }
    @animals.delete(dog)
    name
  end

  def dequeue_cat
    name = @cats.shift
    cat = { name: name, type: :cat }
    @animals.delete(cat)
    name
  end

  def display
    @animals.each do |animal|
      puts "name:", animal[:name]
    end
  end

end

animals = AnimalShelter.new
animals.enqueue('scooby', :dog)
animals.enqueue('tiffany', :cat)
animals.enqueue('timmy', :dog)
animals.enqueue('precious', :cat)
animals.enqueue('rosy', :dog)
animals.display
animals.dequeue_any
animals.enqueue('sweety', :cat)
animals.dequeue_dog
animals.dequeue_cat
animals.display
