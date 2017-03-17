class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

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
