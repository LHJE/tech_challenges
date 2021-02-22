require 'minitest/autorun'
require 'minitest/pride'
require './lib/travel'

class TravelTest < Minitest::Test
  def setup
    @travel = Travel.new
    @ls = [50, 55, 57, 58, 60]
  end

  def test_it_exists
    assert_instance_of Travel, @travel
  end

  def test_best_sum_broken
    ls_2 = []

    assert_nil @travel.choose_best_sum(174, 3, ls_2)
  end

  def test_best_sum_broken_two
    assert_nil @travel.choose_best_sum(nil, 3, @ls)
  end

  def test_best_sum_broken_three
    assert_nil @travel.choose_best_sum(-1, 3, @ls)
  end

  def test_best_sum_broken_four
    assert_nil @travel.choose_best_sum(174, nil, @ls)
  end

  def test_best_sum_broken_five
    assert_nil @travel.choose_best_sum(174, 0, @ls)
  end

  def test_best_sum_broken_five
    assert_nil @travel.choose_best_sum(174, 1, @ls)
  end

  # def test_best_sum_broken_six
  #   ls_2 = nil
  #
  #   assert_nil @travel.choose_best_sum(174, 5, ls_2)
  # end

  def test_best_sum_broken_seven
    assert_nil @travel.choose_best_sum(174, 999, @ls)
  end

  def test_best_sum
    assert_equal 173, @travel.choose_best_sum(174, 3, @ls)
  end

end
