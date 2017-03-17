require_relative 'stack'

def sort_stack(stack)
  temp_stack = Stack.new
  while !stack.empty?
    el = stack.pop
    until temp_stack.peek.nil? || temp_stack.peek >= el
      stack.push(temp_stack.pop)
    end
    temp_stack.push(el)
  end
  temp_stack
end

stk = Stack.new
stk.push(3)
stk.push(4)
stk.pop
stk.push(5)
stk.push(-1)
stk.push(2)
stk.push(0)
puts "before"
stk.display
sorted = sort_stack(stk)
puts "after"
sorted.display
