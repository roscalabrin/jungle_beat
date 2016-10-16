require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
   if @head.nil?
     @head = Node.new(data)
   else append_when_there_is_a_head(data)
   end
   data
  end

  def append_when_there_is_a_head(data)
    new_node = Node.new(data)
    current_node = head
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
      p data
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else prepend_when_there_is_a_head(data)
    end
    data
  end

  def prepend_when_there_is_a_head(data)
    new_head = Node.new(data)
    previous_head = @head
    @head = new_head
    new_head.next_node = previous_head
    data
  end

  def insert(index, data)
    if index == 0
      prepend(data)
    elsif index == -1
      append(data)
    else insert_middle_part_1(index, data)
    end
    data
  end

  def insert_middle_part_1(index, data)
    node_count = 0
    current_node = head
    until node_count == index - 1
      node_count += 1
      current_node = current_node.next_node
    end
    insert_middle_part_2(data, current_node)
  end

  def insert_middle_part_2(data, current_node)
    new_node = Node.new(data)
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def pop(data = "") # eliminates last node of the list
    current_node = head
      while current_node.next_node.next_node != nil
        current_node = current_node.next_node
      end
      node_deleted = current_node.next_node
      current_node.next_node = nil
      node_deleted.data
  end

  def include?(data)
  current_node = head
    while current_node.next_node != nil
      if current_node.data == data
        break
        p current_node.data == data
      end
      current_node = current_node.next_node
    end
    p current_node.data == data
  end

  def find(position, position_2)
  node_count = 0
  current_node = head
    until node_count == position
      node_count += 1
      current_node = current_node.next_node
    end
    find_array = []
    find_array << current_node.data
    find_part_2(find_array, current_node, position_2)
  end

  def find_part_2(find_array,current_node, position_2)
  node_count = 1
  current_node = current_node.next_node
    until node_count == position_2
      node_count += 1
      find_array << current_node.data
      current_node = current_node.next_node
    end
    p find_array.join(' ')
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