require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet'

class AverageTest < Minitest::Test
  def setup
    @alphabet = Alphabet.new
  end

  def test_it_exists
    assert_instance_of Alphabet, @alphabet
  end

  def test_alpha_pos_one
    assert_equal "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11", @alphabet.alphabet_position("The sunset sets at twelve o' clock.")
  end

  def test_alpha_pos_two
    assert_equal "", @alphabet.alphabet_position("-.-'")
  end

end
