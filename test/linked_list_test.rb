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
    list = LinkedList.new
    assert_equal nil, list.head
    assert_equal 0, list.count
  end

  def test_adding_elements_to_the_linked_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_the_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
  end

  def test_append_multiple_elements_to_the_linked_list
    list = LinkedList.new
    list.append ("doop")
    list.append ("dee")
    assert_equal "dee", list.head.next_node.data
  end

  def test_counting_elements_from_the_linked_list
    list = LinkedList.new
    list.append("doop")
    list.append ("dee")
    assert_equal 2, list.count
  end

  def test_list_data_is_combined_into_a_single_string
    list = LinkedList.new
    list.append("doop")
    list.append ("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_adding_an_element_to_the_beggingin_of_the_linked_list
    list = LinkedList.new
    list.append("plop")
    list.append ("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_inserting_an_element_in_the_middle_of_the_list
    list = LinkedList.new
    list.append("plop")
    list.append ("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_inserting_with_different_positions
    list = LinkedList.new
    list.append("plop")
    list.append ("suu")
    list.prepend("dop")
    list.insert(2, "woo")
    assert_equal "dop plop woo suu", list.to_string
  end

  def test_retrivieng_an_element_from_a_specific_position_in_the_linked_list
    list = LinkedList.new
    list.append("deep")
    list.append ("woo")
    list.append ("shi")
    list.append ("shu")
    list.append ("blop")
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_if_an_element_is_included_in_the_list
    list = LinkedList.new
    list.append("deep")
    list.append ("woo")
    list.append ("shi")
    list.append ("shu")
    list.append ("blop")
    assert list.include? ("deep")
    refute list.include? ("dep")
  end

  def test_removing_the_last_node_from_the_linked_list
    list = LinkedList.new
    list.append("deep")
    list.append ("woo")
    list.append ("shi")
    list.append ("shu")
    list.append ("blop")
    list.pop("blop")
    list.pop("shu")
    # assert_equal "blop", list.pop ("blop")
    # assert_equal "shu", list.pop ("shu")
    assert_equal "deep woo shi", list.to_string
  end

end
