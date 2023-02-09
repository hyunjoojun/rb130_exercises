require 'minitest/autorun'

class BooleanTest < MiniTest::Test
  def test_odd
    value = 3
    assert_equal(true, value.odd?)
  end
end
