require_relative 'linked_list.rb'

def partition(linked_list, num)
  less_than = []
  greater_or_eq = []
  n = linked_list.head.next
  while n != linked_list.tail
    if n.value < num
      less_than << n
    else
      greater_or_eq << n
    end
    n = n.next
  end
  new_list = SinglyLinkedList.new
  less_than.each { |node| new_list.insert(node.value) }
  greater_or_eq.each { |node| new_list.insert(node.value) }
  new_list
end

sll = SinglyLinkedList.new
puts "sll"
sll.insert(1)
sll.insert(1)
sll.insert(3)
sll.insert(8)
sll.insert(6)
sll.insert(2)
sll.insert(5)
sll.insert(3)
puts "before"
sll.display
result = partition(sll, 3)
puts "after"
result.display
