require_relative 'linked_list.rb'

def kth_to_last(linked_list, k)
  positions = Hash.new
  count = 0
  n = linked_list.head.next
  while n != linked_list.tail
    count += 1
    positions[count] = n
    n = n.next
  end
  positions[count - k + 1]
end

sll = SinglyLinkedList.new
puts "sll"
sll.insert(1)
sll.insert(1)
sll.insert(3)
sll.insert(2)
sll.insert(5)
sll.insert(3)
puts "before"
sll.display
puts "after"
result = kth_to_last(sll, 3)
puts result.value
