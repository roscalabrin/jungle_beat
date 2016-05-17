require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_exist
    node = Node.new("plop")
    assert_instance_of Node, node
  end

  def test_retrieve_data_from_node
    # skip
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_is_not_linked_to_another_node
    # skip
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end
end
