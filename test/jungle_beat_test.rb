require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'


class JungleBeatTest < Minitest::Test

  def test_jungle_beat_exits
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_that_a_linked_list_is_associated_with_jungle_beat
    jb = JungleBeat.new
    refute nil, jb.list
  end

  def test_linked_list_associated_with_jungle_beat_does_not_have_a_head
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_that_jungle_beat_linked_list_has_a_head_after_adding_nodes
    jb = JungleBeat.new
    jb.append("deep")
    assert_equal "deep", jb.list.head.data
  end

  def test_adding_multiple_nodes_at_the_same_time
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_count_after_adding_elements
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_count_after_adding_elements
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_validation
    jb = JungleBeat.new
    jb.append("deep hello ditt woo bye shu")
    assert_equal 4, jb.count
    assert_equal "deep ditt woo shu", jb.all
  end

end
