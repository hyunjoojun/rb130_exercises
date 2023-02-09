require 'minitest/autorun'

class IncludeTest < MiniTest::Test
  def test_include?
    list = ['abc', 'xyz']
    assert_includes(list, 'xyz')
  end
end
