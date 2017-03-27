require_relative 'tree.rb'

def successor(node)
  node_arr = []
  inorder_with_arr(node, node_arr)
  idx = node_arr.index(node) + 1
  node_arr[idx]
end

def inorder_with_arr(node, arr)
  if !node.nil?
    inorder_with_arr(node.left, arr)
    arr << node
    inorder_with_arr(node.right, arr)
  end
end

root = build_bst([5, 3, 2, 1, 4, 8, 7])
p successor(root)
root = build_binary_tree([5, 3, 2, 1, 4, 8, 7])
p successor(root)
