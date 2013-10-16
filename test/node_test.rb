gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    assert Node
  end

  def test_it_accepts_data
    node = Node.new("Bryana")
    assert_equal "Bryana", node.data
  end

  def test_it_initializes_with_a_nil_link
  	node = Node.new("Bryana")
  	assert_equal nil, node.link
  end

end
