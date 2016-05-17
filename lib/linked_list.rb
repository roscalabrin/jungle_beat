require_relative 'node'

class LinkedList
  attr_accessor :data
  attr_accessor :head
  attr_accessor :next_node

  def initialize
    @head = head
  end

  def append(data)
    @head = Node.new(data)
    @data = data
  end

  def count
    head != nil ? 1 : 0
  end

  def to_string
    @data
  end


  # def counter
  # node_count = 1
  # current_node = head
  #   while list.current_node.next_node != nil
  #     node_count += 1
  #     current_node = current_node.next_node
  #   end
  # end

end
