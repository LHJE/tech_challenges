require 'minitest/autorun'
require 'minitest/pride'
require './lib/valid'

class ValidTest < Minitest::Test
  def setup
    @valid = Valid.new
  end

  def test_it_exists
    assert_instance_of Valid, @valid
  end

  def test_valid_one
    assert_equal false, @valid.valid_parentheses("  (")
  end

  def test_valid_two
    assert_equal false, @valid.valid_parentheses(")test")
  end

  def test_valid_three
    assert_equal true, @valid.valid_parentheses("")
  end

  def test_valid_four
    assert_equal false, @valid.valid_parentheses("hi())(")
  end

end
