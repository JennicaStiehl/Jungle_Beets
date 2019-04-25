require './test/test_helper'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_it_can_find_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append_to_list
    list = LinkedList.new
    list.append("doop") #"doop"

    assert_equal "doop", list.head.data
  end

  def test_it_can_count_nodes
    list = LinkedList.new
    list.append("doop") #"doop"
    list.append("op") #"doop"

    assert_equal 2, list.count
  end

  def test_it_can_make_a_string_with_data
    list = LinkedList.new
    list.append("doop") #"doop"
    list.append("op") #"doop"

    assert_equal "doop op ", list.to_string
  end

end
