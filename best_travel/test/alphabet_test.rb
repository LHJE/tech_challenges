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


end
