require_relative 'linked_list.rb'

def delete_middle_node(node)
  node.value = node.next.value
  node.next = node.next.next
end

sll = SinglyLinkedList.new
puts "sll"
sll.insert(1)
sll.insert(1)
sll.insert(3)
sll.insert(2)
middle_node = sll.insert(5)
sll.insert(3)
puts "before"
sll.display
delete_middle_node(middle_node)
puts "after"
sll.display
