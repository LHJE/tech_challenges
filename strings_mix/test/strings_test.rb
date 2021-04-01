require 'minitest/autorun'
require 'minitest/pride'
require './lib/strings'

class StringsTest < Minitest::Test
  def setup
    @strings = Strings.new
  end

  def test_it_exists
    assert_instance_of Strings, @strings
  end

  def test_strings_one
    assert_equal "2:eeeee/2:yy/=:hh/=:rr", @strings.mix("Are they here", "yes, they are here")
  end

  def test_strings_two
    assert_equal "1:ooo/1:uuu/2:sss/=:nnn/1:ii/2:aa/2:dd/2:ee/=:gg", @strings.mix("looping is fun but dangerous", "less dangerous than coding")
  end

end
