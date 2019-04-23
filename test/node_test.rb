require './test/test_helper'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")

    assert_instance_of Node, node
  end

  def test_it_can_have_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_it_can_get_the_next_node
    node = Node.new("plop")

    assert_nil node.next_node
  end


end
