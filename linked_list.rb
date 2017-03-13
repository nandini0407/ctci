class Node
  attr_accessor :value, :prev, :next

  def initialize(value = nil)
    @value = value
    @next = nil
    @prev = nil
  end

end

class SinglyLinkedList

  attr_accessor :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
    @last_node = Node.new
    @head.next = @last_node
    @last_node.next = @tail
  end

  def find(val)
    n = @head
    while n != @tail
      return n if n.value == val
      n = n.next
    end
    nil
  end

  # inserts new node at the beginning(immediatedly after head)
  def insert(val)
    if @last_node.nil?
      @last_node.value = value
    else
      new_node = Node.new(val)
      @last_node.next = new_node
      new_node.next = @tail
      @last_node = new_node
    end
    @last_node
    # pushed_node = @head.next
    # new_node.next = pushed_node
    # @head.next = new_node
    # new_node
  end

  def delete(val)
    n = @head
    while n != @tail
      if n.next.nil?
        return nil
      elsif n.next.value == val
        node_to_delete = n.next
        n.next = n.next.next
        # n.next.next = nil
        return node_to_delete
      end
      n = n.next
    end
    nil
  end

  def delete_node(node)
    n = head.next
    while n != @tail
      if n.next == node
        node_to_delete = n.next
        n.next = n.next.next
        return node_to_delete
      end
      n = n.next
    end
    nil
  end

  def display
    n = head.next
    while n != @tail
      puts n.value
      n = n.next
    end
  end

end

class DoublyLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
  end

  def find(val)
    n = @head
    while n != @tail
      return n if n.value == val
      n = n.next
    end
    nil
  end

  # inserts new node at the end (just before tail)
  def insert(val)
    new_node = Node.new(val)
    new_node.next = @tail
    new_node.prev = @tail.prev
    @tail.prev.next = new_node
    @tail.prev = new_node
    new_node
  end

  def delete(val)
    n = @head
    while n != @tail
      if n.value == val
        n.prev.next = n.next
        n.next.prev = n.prev
        n.next = nil
        n.prev = nil
        return n
      end
      n = n.next
    end
    nil
  end

  def delete_node(node)
    n = @head.next
    while n != @tail
      if n == node
        n.prev.next = n.next
        n.next.prev = n.prev
        n.next = nil
        n.prev = nil
        return n
      end
      n = n.next
    end
    nil
  end

  def display
    n = head.next
    while n != @tail
      puts n.value
      n = n.next
    end
  end

end

# sll = SinglyLinkedList.new
# dll = DoublyLinkedList.new
#
# puts sll.insert(4).value
# puts sll.insert(5).value
# puts sll.insert(6).value
# puts sll.find(5).value
# puts sll.delete(5).value
# puts sll.delete(7)
# puts "begin display"
# sll.display
# puts "end display"
#
# puts dll.insert(1).value
# puts dll.insert(2).value
# puts dll.insert(3).value
# puts dll.find(2).value
# puts dll.delete(2).value
# puts dll.delete(9)
# puts "begin display"
# dll.display
# puts "end display"
