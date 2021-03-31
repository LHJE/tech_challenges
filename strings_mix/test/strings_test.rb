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


end
