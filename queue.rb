class Queue

  def initialize
    @store = []
  end

  def add(item)
    @store << item
  end

  def remove
    @store.shift
  end

  def peek
    @store[0]
  end

  def empty?
    @store.empty?
  end

  def size
    @store.length
  end

end
