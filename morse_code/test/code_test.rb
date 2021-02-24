require 'minitest/autorun'
require 'minitest/pride'
require './lib/code'

class CodeTest < Minitest::Test
  def setup
    @code = Code.new
  end

  def test_it_exists
    assert_instance_of Code, @code
  end

  def test_alpha_pos_one
    assert_equal "HEY  JUDE", @code.decodeMorse('.... . -.--   .--- ..- -.. .')
  end

end
