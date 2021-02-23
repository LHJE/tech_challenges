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

  def test_aveage
    assert_equals "D", @average.get_grade(65, 70, 59)
  end

end
