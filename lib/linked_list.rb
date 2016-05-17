class LinkedList
  attr_reader   :head
  attr_reader   :data
  attr_accessor :next_node

  def append(data)
    @data = data
  end

  def head
    @data
    @next_node
  end





  # def count
  # current_node = head
  # node_count = 0
  # while current_node.next_node != nil
  #   node_count += 1
  #   current_node = current_node.next_node
  # end


  # end

end
