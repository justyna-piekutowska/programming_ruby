require_relative 'words_from_string'
require "minitest/autorun"

class TestWordsFromString < MiniTest::Unit::TestCase

  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("   "))
  end

  def test_single_word
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string(" cat "))
  end

  def test_many_words
    assert_equal(["the", "cat", "sat", "on"], words_from_string("the cat sat on"))
  end

  def test_ignores_punctation
    assert_equal(["the", "cat's", "mat"], words_from_string("<the!> cat's, -mat-"))
  end
end
