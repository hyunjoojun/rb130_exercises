require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  attr_accessor :register, :transaction1

  def setup
    @register = CashRegister.new(500)
    @transaction1 = Transaction.new(20)
  end

  def test_accept_money
    transaction1.amount_paid = 20
    previous_amount = register.total_money
    register.accept_money(transaction1)
    current_amount = register.total_money

    assert_equal(previous_amount + 20, current_amount)
  end
end
