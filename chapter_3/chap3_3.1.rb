class ThreeStacks
  def initialize
    @store = Array.new(3) { Array.new }
  end

  def push(stack_num, item)
    @store[stack_num - 1] << item
  end

  def pop(stack_num)
    @store[stack_num - 1]
  end

  def peek(stack_num)
    @store[stack_num - 1][-1]
  end

  def empty?(stack_num)
    @store[stack_num - 1].empty?
  end

  def size(stack_num)
    @store[stack_num - 1].length
  end
end
