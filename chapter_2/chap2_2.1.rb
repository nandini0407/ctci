require_relative 'linked_list.rb'

def remove_dups(linked_list)
  seen = Hash.new
  nodes_to_delete = []
  n = linked_list.head.next
  while n != linked_list.tail
    if seen[n.value]
      nodes_to_delete << n
    else
      seen[n.value] = true
    end
    n = n.next
  end

  nodes_to_delete.each do |node|
    linked_list.delete(node.value)
  end

  linked_list
end

# O(n^2)

sll = SinglyLinkedList.new
puts "sll"
sll.insert(1)
sll.insert(1)
sll.insert(3)
sll.insert(2)
sll.insert(5)
sll.insert(3)
puts "before dup"
sll.display
remove_dups(sll)
puts "after dup"
sll.display

dll = DoublyLinkedList.new
puts "dll"
dll.insert(1)
dll.insert(1)
dll.insert(3)
dll.insert(2)
dll.insert(5)
dll.insert(3)
puts "before dup"
dll.display
remove_dups(dll)
puts "after dup"
dll.display
