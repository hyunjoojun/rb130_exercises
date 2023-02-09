require 'minitest/autorun'

class ExceptionTest < MiniTest::Test
  def test_exception
    assert_raises NoExprienceError do
      employee.hire
    end
  end
end
