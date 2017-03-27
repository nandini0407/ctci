class Node
  attr_accessor :value, :left, :right, :parent

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
    @parent = nil
  end

end

def build_binary_tree(arr)
  root = Node.new(arr[0])
  bt_arr = [root]
  i = 1
  while i < arr.length
    if (i - 1) / 2 >= 0
      parent = bt_arr[(i - 1) / 2]
      new_node = Node.new(arr[i])
      if parent.left.nil?
        parent.left = new_node
        new_node.parent = parent
        bt_arr << new_node
      elsif parent.right.nil?
        parent.right = new_node
        new_node.parent = parent
        bt_arr << new_node
      end
    end
    i += 1
  end
  root
end

def build_bst(arr)
  root = Node.new(arr[0])
  arr[1..-1].each do |el|
    insert_into_bst(root, el)
  end
  root
end

def insert_into_bst(node, value)
  if node.nil?
    return Node.new(value)
  end
  if value <= node.value
    node.left = insert_into_bst(node.left, value)
    node.left.parent = node
  else
    node.right = insert_into_bst(node.right, value)
    node.right.parent = node
  end
  node
end

def inorder(node)
  if !node.nil?
    inorder(node.left)
    puts node.value
    inorder(node.right)
  end
end

def preorder(node)
  if !node.nil?
    puts node.value
    preorder(node.left)
    preorder(node.right)
  end
end

def postorder(node)
  if !node.nil?
    postorder(node.left)
    postorder(node.right)
    puts node.value
  end
end
