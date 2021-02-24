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

  def test_play
    assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  end

  # def test_play_two
  #   assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  #   assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
  # end
  #
  # def test_play_three
  #   assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  #   assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
  #   assert_equal "Player 2 is on square 31", @snakes.play(6, 2)
  # end
  #
  # def test_play_four
  #   assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  #   assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
  #   assert_equal "Player 2 is on square 31", @snakes.play(6, 2)
  #   assert_equal "Player 1 is on square 25", @snakes.play(1, 1)
  # end

end
