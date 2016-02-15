class Node
  attr_accessor :data, :pointer

  def initialize(data)
    @pointer = nil
    @data = data
  end
end


class List
  attr_accessor :head
  def initialize
    @head = nil
  end

  def all
    if @head.nil?
      []
    else
      current_node = @head
      arr = []
      while current_node do
        arr << current_node.data
        current_node = current_node.pointer
      end
      arr
    end
  end

  def add(node)
    if @head.nil?
      @head = node
    else
      current_node = @head
      while !current_node.pointer.nil? do
        current_node = current_node.pointer
      end
      current_node.pointer = node
    end
  end
end
