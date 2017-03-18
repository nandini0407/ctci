require_relative 'tree.rb'

def validate_bst?(node)
  if node.left.nil? || node.right.nil?
    return true
  elsif node.left.value > node.value
    return false
  elsif node.right.value <= node.value
    return false
  else
    return validate_bst?(node.left) && validate_bst?(node.right)
  end
end

root = build_bst([2, 1, 3])
puts validate_bst?(root)
root = build_binary_tree([1, 2, 3])
puts validate_bst?(root)
root = build_bst([5, 3, 2, 1, 4, 8, 7])
puts validate_bst?(root)
root = build_binary_tree([5, 3, 2, 1, 4, 8, 7])
puts validate_bst?(root)
