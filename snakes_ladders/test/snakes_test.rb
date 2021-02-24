require 'minitest/autorun'
require 'minitest/pride'
require './lib/snakes'

class SnakesTest < Minitest::Test
  def setup
    @snakes = Snakes.new
  end

  def test_it_exists
    assert_instance_of Snakes, @snakes
  end

  def test_snakes
    assert_equal "example", @snakes.method()
  end
  
end
