require_relative 'stack.rb'

class MyQueue

  def initialize
    @push_stack = Stack.new
    @pop_stack = Stack.new
  end

  def add(item)
    @pop_stack.size.times do
      @push_stack.push(@pop_stack.pop)
    end
    @push_stack.push(item)
    @push_stack.size.times do
      @pop_stack.push(@push_stack.pop)
    end
  end

  def remove
    @pop_stack.pop
  end

  def peek
    @pop_stack.peek
  end

  def size
    @pop_stack.size
  end

  def empty?
    @pop_stack.empty?
  end

end
