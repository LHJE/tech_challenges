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

end
