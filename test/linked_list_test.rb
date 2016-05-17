require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  # def setup
  #   list = LinkedList.new
  # end

  def test_linked_list_exist
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end
  # <LinkedList head=nil #45678904567>

  def test_head_does_not_exist
    # skip
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_adding_elements_to_the_linked_list
    # skip
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end
  # <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>

  def test_the_next_node_is_nil
    # skip
    list = LinkedList.new
    assert_equal nil, list.head.next_node
  end

  def test_counting_elements_from_the_linked_list
    skip
    list = LinkedList.new
    assert_equal 1, list.count
  end

  def test_xx
    skip
    list = LinkedList.new
    assert_equal "doop", list.to_string
  end



end
