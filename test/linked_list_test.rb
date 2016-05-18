require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_linked_list_exist
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_does_not_exist
    # skip
    list = LinkedList.new
    assert_equal nil, list.head
    assert_equal 0, list.count
  end

  def test_adding_elements_to_the_linked_list
    # skip
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_the_next_node_is_nil
    # skip
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
  end

  def test_append_multiple_elements_to_the_linked_list
    # skip
    list = LinkedList.new
    list.append ("doop")
    list.append ("dee")
    assert_equal "dee", list.head.next_node.data
  end

  def test_counting_elements_from_the_linked_list
    # skip
    list = LinkedList.new
    list.append("doop")
    list.append ("dee")
    assert_equal 2, list.count
  end

  def test_list_data_is_combined_in_a_single_string
    # skip
    list = LinkedList.new
    list.append("doop")
    list.append ("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_append_and_prepend
    # skip
    list = LinkedList.new
    list.append("plop")
    list.append ("suu")
    list.prepend("dop")
    # assert_equal "doop deep", list.to_string
    assert_equal 3, list.count
  end

  def test_insert
    # skip
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    binding.pry
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_list_data_is_combined_in_a_single_string_after_methods
    # skip
    list = LinkedList.new
    list.append("plop")
    list.append ("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end


end
