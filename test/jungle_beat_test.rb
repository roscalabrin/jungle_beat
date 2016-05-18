require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beat'
require 'pry'


class JungleBeatTest < Minitest::Test

  def test_jungle_beat_exits
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb
  end

  def test_that_jungle_beat_has_a_linked_list_associated
    # skip
    jb = JungleBeat.new
    refute nil, jb.list
  end

  def test_that_jungle_beat_linked_list_does_not_have_a_head
    # skip
    jb = JungleBeat.new
    assert_equal nil, jb.list.head
  end

  def test_addings_multiple_nodes_at_the_same_time
    # skip
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_count_after_adding_elements
    # skip
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    binding.pry
    assert_equal 6, jb.count
  end

  def test_count_after_adding_elements
    # skip
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    # binding.pry
    jb.play
    assert_equal 6, jb.count
  end


end
