require_relative 'bst.rb'

def make_bst(sorted_arr)
  return nil if sorted_arr.empty? || sorted_arr.nil?
  m = (sorted_arr.length / 2)
  root = Node.new(sorted_arr[m])
  left = sorted_arr[0...m]
  right = sorted_arr[(m + 1)..-1]
  root.left = make_bst(left)
  root.right = make_bst(right)
  root
end

rt = make_bst([1, 2, 3, 4, 5, 6, 7])
preorder(rt)
