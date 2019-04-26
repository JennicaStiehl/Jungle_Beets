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
    list.append("deep") #"doop"

    assert_equal 2, list.count
  end

  def test_it_can_make_a_string_with_data
    list = LinkedList.new
    list.append("doop") #"doop"
    list.append("deep") #"doop"

    assert_equal "doop deep ", list.to_string
  end

  def test_it_can_prepend
    list = LinkedList.new
    list.append("plop")
    list.to_string #"plop"
    list.append("suu") #"suu"
    list.prepend("dop") #"dop"
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count #3
  end

#   def test_it_can_insert
#     > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"

#   def test_it_can_pop
#     > list.to_string
# => "deep woo shi shu blop"
# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"
#   end

end
