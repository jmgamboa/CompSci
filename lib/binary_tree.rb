require 'pry'
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

  def search(node = self.root)

    # find the root look to find all the child nodes exist using recursion
    #need to insert
    #for i in 0...length 
    #value = self[i]
    #return value if yield(value)
    tree = []
       if node.left
        tree += search(node.left)
        puts "hello"
      end
    tree << node
      if node.right
        tree += search(node.right)
        puts "hi"

      end


  end

  def find 
    for i in 0...length
      value = self[i]
      return value if yield(value)
    end
  end

  def to_s
    self.root.to_s.squeeze(" ").strip
  end
end
["Do", "This", "Array"].find { |p| p.length > 2 }

