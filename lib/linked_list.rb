require_relative 'node'

class LinkedList
  attr_accessor :data
  attr_accessor :head
  attr_accessor :next_node

  def initialize
    @head = head
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      head.next_node = new_node
    end
    @data
  end

  # def append(data)
  # # if head is nil I can simply add node to the head
  # # if there's a head, the current_head becomes the next_node of the new node
  #   if @head.nil?
  #     @head = Node.new(data)
  #   else
  #     new_head = Node.new(data)
  #     previous_head = @head
  #     @head = new_head
  #     new_head.next_node = previous_head
  #   end
  #   @data = data
  # end


  # def tail
  # # move through list until you find .next_node == nil
  #
  # end


  def count
    head != nil ? counter : 0
  end

  def counter
    node_count = 1
    current_node = head
    while current_node.next_node != nil
      node_count += 1
      current_node = current_node.next_node
    end
    node_count
  end


  def to_string #not working
    list_data = ""
    current_node = head
    while current_node.next_node != nil
      list_data.insert(-1, current_node.data)
      current_node = current_node.next_node
    end
    p list_data
  end

end
