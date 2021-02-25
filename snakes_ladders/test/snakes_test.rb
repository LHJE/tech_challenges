require 'minitest/autorun'
require 'minitest/pride'
require './lib/snakes'

class SnakesLaddersTest < Minitest::Test
  def setup
    @snakes = SnakesLadders.new
    @player_1 = SnakesLadders::Player.new(0)
    @player_2 = SnakesLadders::Player.new(0)
  end

  def test_it_exists
    assert_instance_of SnakesLadders, @snakes
  end

  def test_play
    assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
    assert_equal true, @snakes.player_1_turn
    assert_equal 38, @snakes.player_1.position
    assert_equal 0, @snakes.player_2.position
  end

  def test_play_two
    assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
    assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
    assert_equal false, @snakes.player_1_turn
    assert_equal 44, @snakes.player_1.position
    assert_equal 0, @snakes.player_2.position
  end

  # def test_play_three
  #   assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  #   assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
  #   assert_equal "Player 2 is on square 31", @snakes.play(6, 2)
  #   assert_equal true, @snakes.player_1_turn
  #   assert_equal 31, @snakes.player_2_position
  #   assert_equal 44, @snakes.player_1_position
  # end
  #
  # def test_play_four
  #   assert_equal "Player 1 is on square 38", @snakes.play(1, 1)
  #   assert_equal "Player 1 is on square 44", @snakes.play(1, 5)
  #   assert_equal "Player 2 is on square 31", @snakes.play(6, 2)
  #   assert_equal "Player 1 is on square 25", @snakes.play(1, 1)
  #   assert_equal true, @snakes.player_1_turn
  #   assert_equal 31, @snakes.player_2_position
  #   assert_equal 25, @snakes.player_1_position
  # end

end
