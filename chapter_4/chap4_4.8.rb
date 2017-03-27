require_relative 'tree.rb'

def first_common_ancestor(node, a, b)
  path_a_to_node = []
  while a != node.parent
    path_a_to_node << a
    a = a.parent
  end
  while b != node.parent
    return b if path_a_to_node.include?(b)
    b = b.parent
  end
  nil
end

root = build_bst([5, 3, 2, 1, 4, 8, 7])
m = root.left.left.left
n = root.left.right
puts first_common_ancestor(root, m, n).value
