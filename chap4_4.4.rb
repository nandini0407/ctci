require_relative 'tree.rb'

def balanced?(node)
  left_height = height(node.left)
  right_height = height(node.right)
  if (left_height - right_height).abs > 1
    return false
  else
    return true
  end
end

def height(node)
  if node.nil?
    return 0
  elsif node.left.nil? && node.right.nil?
    return 1
  else
    left_height = height(node.left)
    right_height = height(node.right)
    if left_height >= right_height
      return left_height + 1
    else
      return right_height + 1
    end
  end
end

root = build_bst([5, 3, 2, 1, 4, 8, 7])
puts balanced?(root)
root = build_bst([1,2,3,4,5,6])
puts balanced?(root)
root = build_binary_tree([5, 3, 2, 1, 4, 8, 7])
puts balanced?(root)
root = build_binary_tree([1,2,3,4,5,6])
puts balanced?(root)
