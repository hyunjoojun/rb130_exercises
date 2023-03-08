require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'sample'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @string = @file.read
    @text = Text.new(@string)
  end

  def test_swap
    swapped_text = @text.swap('a', 'e')
    assert_equal(0, swapped_text.count('a'))
  end

  def test_word_count
    expected_count = @string.split.count
    assert_equal(expected_count, @text.word_count)
  end

  def test_word_count2
    count = 0
    @string.split.each do |_|
      count += 1
    end
    assert_equal(count, @text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end
