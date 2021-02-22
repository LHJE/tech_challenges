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

    assert_nil @travel.choose_best_sum(174, 3, ls)
  end

  def test_best_sum_broken_two
    ls = [50, 55, 57, 58, 60]

    assert_nil @travel.choose_best_sum(nil, 3, ls)
  end

  def test_best_sum_broken_three
    ls = [50, 55, 57, 58, 60]

    assert_nil @travel.choose_best_sum(-1, 3, ls)
  end

  def test_best_sum_broken_four
    ls = [50, 55, 57, 58, 60]

    assert_nil @travel.choose_best_sum(174, nil, ls)
  end

  def test_best_sum_broken_five
    ls = [50, 55, 57, 58, 60]

    assert_nil @travel.choose_best_sum(174, 0, ls)
  end

  def test_best_sum_broken_six
    ls = nil

    assert_nil @travel.choose_best_sum(174, 0, ls)
  end



end
