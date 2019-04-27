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

    assert_equal "doop, deep", list.to_string
  end

  def test_it_can_prepend_and_count
    list = LinkedList.new
    list.append("plop")
    list.to_string #"plop"
    list.append("suu") #"suu"
    list.prepend("dop") #"dop"

    assert_equal 3, list.count #3
  end

  def test_it_can_create_string_after_prepend
    list = LinkedList.new
    list.append("plop")
    list.to_string #"plop"
    list.append("suu") #"suu"
    list.prepend("dop") #"dop"
    assert_equal "dop, plop, suu", list.to_string
  end

  def test_it_can_insert
    list = LinkedList.new
    list.append("plop")
    list.append("suu") #"suu"
    list.prepend("dop") #"dop"
    list.insert(1, "woo")
    assert_equal "dop, woo, plop, suu", list.to_string
  end

  def test_it_can_find_elements
    list = LinkedList.new
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal "woo, shi, shu, blop", list.to_string
    assert_equal "woo, shi", list.find(0, 2) #"shi"
    assert_equal "woo, shi, shu", list.find(0, 3) #"woo shi shu"
  end

  def test_it_can_determine_if_an_element_is_included
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    assert_equal true, list.includes?("deep") #true
    assert_equal false, list.includes?("dep") #false
  end

  def test_it_can_pop_elements
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop #"blop"
    list.pop #"shu"
    assert_equal "deep, woo, shi", list.to_string
  end

end
