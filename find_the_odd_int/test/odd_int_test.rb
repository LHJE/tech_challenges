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

  def test_find_it_two
    assert_equal (-1), @odd_int.find_it([1,1,2,-2,5,2,4,4,-1,-2,5])
  end

  def test_find_it_three
    assert_equal 5, @odd_int.find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
  end

  def test_find_it_four
    assert_equal 10, @odd_int.find_it([10])
  end

  def test_find_it_five
    assert_equal 10, @odd_int.find_it([1,1,1,1,1,1,10,1,1,1,1])
  end

end
