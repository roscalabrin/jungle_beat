require_relative 'node'

class LinkedList
  attr_accessor :data
  attr_accessor :head
  attr_accessor :next_node

  def initialize
    @head = head
  end

  def append(data)  #adds to the end -> changes the tail
   if @head.nil?
     @head = Node.new(data)
   else
    new_node = Node.new(data)
    current_node = head
      while current_node.next_node != nil
      current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
    @data = data
  end

  def prepend(data) #adds to the beginning -> changes the head
    if @head.nil?
      @head = Node.new(data)
    else
      new_head = Node.new(data)
      previous_head = @head
      @head = new_head
      new_head.next_node = previous_head
    end
    @data = data
  end

  def insert(index, data)
    if index == 0
      prepend(data)
    elsif index == -1
      append(data)
    else insert_middle(index, data)
    end
    @data = data
  end

  def insert_middle(index, data)
    # new_node = Node.new(data)
    index = index
    node_count = 0
    current_node = head
    while current_node.next_node != nil
      node_count += 1
      current_node = current_node.next_node
      if node_count = index - 1
        break
      end
    end
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end


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

  def to_string
    list_data = [head.data]
    current_node = head
    while current_node.next_node != nil
      list_data << current_node.next_node.data
      current_node = current_node.next_node
    end
    p list_data.join(' ')
  end



end
