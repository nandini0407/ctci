class Stack

  def initialize
    @store = []
  end

  def push(item)
    @store << item
  end

  def pop
    @store.pop
  end

  def peek
    @store[-1]
  end

  def empty?
    @store.empty?
  end

  def size
    @store.length
  end

  def display
    i = size - 1
    while i >= 0
      puts @store[i]
      i -= 1
    end
  end

end

# stk = Stack.new
# puts "before"
# stk.display
# stk.push(3)
# stk.push(4)
# stk.pop
# stk.push(5)
# stk.push(2)
# stk.push(0)
# puts "after"
# stk.display
# puts "peek"
# puts stk.peek
