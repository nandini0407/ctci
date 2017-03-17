class SetOfStacks

  def initialize
    @stacks = Array.new(1) { Array.new }
    @capacity = 3
  end

  def push(item)
    if @stacks[-1].length == @capacity
      @stacks << [item]
    else
      @stacks[-1] << item
    end
  end

  def pop
    if @stacks[-1].length == 1
      removed = @stacks[-1].pop
      @stacks.pop
    else
      removed = stacks[-1].pop
    end
    removed
  end

  def peek
    @stacks[-1][-1]
  end

  def size
    @stacks.flatten.length
  end

  def empty?
    @stacks.flatten.empty?
  end

  def num_stacks
    @stacks.length
  end

end
