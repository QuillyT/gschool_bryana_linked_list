gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_it_exists
    assert LinkedList
  end

  def test_it_can_push_data
    list = LinkedList.new
    assert_equal 0, list.count
    list.push("one")
    assert_equal 1, list.count
    list.push(2)
    list.push([])
    assert_equal 3, list.count
  end

  def test_it_can_pop
  	#removes node
  	#returns the value of the node
  	list = LinkedList.new
  	list.push(1)
  	list.push(2)
  	list.push(3)
  	list.push(4)
    assert_equal 4, list.pop
    assert_equal 3, list.count
  end

  def test_it_beheads_the_list
    list = LinkedList.new
    list.push(1)
    list.push(2)
    list.push(3)
    list.push(4)
    assert_equal 1, list.behead  
    assert_equal 3, list.count
  end

  def test_it_extracts_from_middle_of_list
    list = LinkedList.new
    list.push(1)
    list.push(2)
    list.push(3)
    list.push(4)
    assert list.extract(2)  
    assert_equal 3, list.count
    refute list.extract(2)
  end

end
