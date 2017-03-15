require_relative 'stack.rb'

class MyQueue

  def initialize
    @push_stack = []
    @pop_stack = []
  end

  def add(item)
    @pop_stack.each do |el|
      @push_stack << el
    end
    @push_stack << item
  end

  def remove
    @push_stack.each do |el|
      @pop_stack << el
    end
    @pop_stack.pop
  end

  def peek
    if @pop_stack.empty?
      return @push_stack[0]
    else
      return @pop_stack[-1]
    end
  end

  def size
    @push_stack.empty? ? @pop_stack.length : @push_stack.length
  end

  def empty?
    @push_stack.empty? && @pop_stack.empty?
  end

end
