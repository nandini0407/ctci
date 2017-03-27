require_relative 'chap4_4.2.rb'
require_relative 'tree.rb'
require_relative 'linked_list.rb'

# O(n^3)
def bst_to_linked_list_at_each_level(node)
  prc = Proc.new { |arr, el| arr << el }
  levels_of_nodes = Hash.new
  node_arr = []
  preorder_with_prc(node, node_arr, &prc)
  node_arr.each do |nde|
    lvl = level(nde)
    if levels_of_nodes[lvl]
      levels_of_nodes[lvl] << nde
    else
      levels_of_nodes[lvl] = [nde]
    end
  end
  linked_list_arr = []
  levels_of_nodes.each do |_, nodes|
    lst = SinglyLinkedList.new
    nodes.each do |nde|
      lst.insert(nde.value)
    end
    linked_list_arr << lst
  end
  linked_list_arr
end

def level(node)
  if node.nil?
    return 0
  elsif node.left.nil? && node.right.nil?
    return 1
  else
    left_level = level(node.left)
    right_level = level(node.right)
    if left_level >= right_level
      return left_level + 1
    else
      return right_level + 1
    end
  end
end

def preorder_with_prc(node, arr, &prc)
  if !node.nil?
    prc.call(arr, node)
    preorder_with_prc(node.left, arr, &prc)
    preorder_with_prc(node.right, arr, &prc)
  end
end

rt = make_bst([1, 2, 3, 4, 5, 6, 7])
ll_arr = bst_to_linked_list_at_each_level(rt)
ll_arr.each do |ll|
  ll.display
end
