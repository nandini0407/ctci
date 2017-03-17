class MinStack

  def initialize
    @store = []
  end

  def push(item)
    if empty?
      @store << { val: item, min: item }
    else
      new_min = @store[-1][:min] > item ? item : @store[-1][:min]
      @store << { val: item, min: new_min }
    end
  end

  def pop
    @store.pop
  end

  def peek
    @store[-1].val
  end

  def min
    if empty?
      return nil
    else
      return @store[-1][:min]
    end
  end

  def empty?
    @store.empty?
  end

  def size
    @store.length
  end

end
