require 'minitest/autorun'
require 'minitest/pride'
require './lib/odd_int'

class OddIntTest < Minitest::Test
  def setup
    @odd_int = OddInt.new
  end

  def test_it_exists
    assert_instance_of OddInt, @odd_int
  end

  def test_find_it_one
    assert_equal 5, @odd_int.find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
  end

end
