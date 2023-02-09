require 'minitest/autorun'

class RefutationstTest < MiniTest::Test
  def test_includes
    list = ['abc']
    refute_includes(list, 'xyz')
  end
end
