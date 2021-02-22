require 'minitest/autorun'
require 'minitest/pride'
require './lib/travel'

class TravelTest < Minitest::Test
  def setup
    @travel = Travel.new
  end

  def test_it_exists
    assert_instance_of Travel, @travel
  end

  def test_best_sum_broken
    ls = []

    assert_equal nil, @travel.choose_best_sum(174, 3, ls)
  end

  def test_best_sum
    ls = [50, 55, 57, 58, 60]

    assert_equal 173, @travel.choose_best_sum(174, 3, ls)
  end


end
