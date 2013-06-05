class BinaryTree
  attr_accessor :root

  def insert_data(data)
    self.root = insert(data)
  end

  def insert(data, node = self.root)
    if node.nil?
      Node.new(data)
    else
      if data < node.data
        node.left = insert(data, node.left)
      else
        node.right = insert(data, node.right)
      end
      node
    end
  end

  def nodes(node = self.root)
      r = []
      r += nodes(node.left) if node.left
      r << node
      r += nodes(node.right) if node.right
      r.flatten
  end

  def count(node = self.root)
    i = 0
    r = count(node.left) if node.left
    r = count(node.right) if node.right
    i += 1 if node.right.nil? and if node.right.nil?
  end


  def to_s
    self.root.to_s.squeeze(" ").strip
  end
end