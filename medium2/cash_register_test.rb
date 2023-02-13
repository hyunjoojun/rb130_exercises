require 'minitest/autorun'
# require "minitest/reporters"
# Minitest::Reporters.use!

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

  def test_change
    transaction1.amount_paid = 50
    assert_equal(register.change(transaction1), 30)
  end

  def test_give_receipt
    item_cost = transaction1.item_cost
    assert_output("You've paid $#{item_cost}.\n") do
      register.give_receipt(transaction1)
    end
  end

  def test_prompt_for_payment
    input = StringIO.new("20\n")
    output = StringIO.new
    transaction1.prompt_for_payment(input: input, output: output)
    assert_equal(20, transaction1.amount_paid)
  end
end
