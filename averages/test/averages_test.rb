require 'minitest/autorun'
require 'minitest/pride'
require './lib/averages'

class AverageTest < Minitest::Test
  def setup
    @average = Average.new
  end

  def test_it_exists
    assert_instance_of Average, @average
  end

  def test_aveage_a
    assert_equal "A", @average.get_grade(95, 90, 93)
  end

  def test_aveage_b
    assert_equal "B", @average.get_grade(70, 70, 100)
  end

  def test_aveage_c
    assert_equal "C", @average.get_grade(70, 70, 70)
  end

  def test_aveage_d
    assert_equal "D", @average.get_grade(65, 70, 59)
  end

  def test_aveage_f
    assert_equal "F", @average.get_grade(44, 55, 52)
  end

end
