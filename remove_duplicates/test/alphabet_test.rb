require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphabet'

class AlphabetTest < Minitest::Test
  def setup
    @alphabet = Alphabet.new
  end

  def test_it_exists
    assert_instance_of Alphabet, @alphabet
  end

  def test_it_removes_duplicates_one
    assert_equal "a", @alphabet.remove_duplicates("a")
  end

  def test_it_removes_duplicates
    assert_equal "ca", @alphabet.remove_duplicates("abbaca")
  end

  def test_it_removes_duplicates_two
    assert_equal "tpz", @alphabet.remove_duplicates("aatpolloz")
  end

  def test_it_removes_duplicates_three
    assert_equal "tacocat", @alphabet.remove_duplicates("tacocat")
  end

  def test_it_removes_duplicates_four
    assert_equal "", @alphabet.remove_duplicates("taat")
  end

  def test_it_removes_duplicates_five
    assert_equal "hithereitisme", @alphabet.remove_duplicates("allllahithereitismegabbagabba")
  end
end
