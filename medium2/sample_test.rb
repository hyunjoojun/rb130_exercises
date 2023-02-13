require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'sample'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @text = Text.new(@file.read)
  end

  def test_swap
    swapped_text = @text.swap('a', 'e')
    assert_equal(0, swapped_text.count('a'))
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end

  def test_word_count
    assert_equal(72, @text.word_count)
  end
end
