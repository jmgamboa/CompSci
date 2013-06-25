class Node
  attr_accessor :data
  attr_accessor :left
  attr_accessor :right

  def initialize(data)
    self.data = data
  end

  def to_s
    data
  end
end