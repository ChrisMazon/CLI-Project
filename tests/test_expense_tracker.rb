require "minitest/autorun"
require_relative "../expense_tracker" # Adjust the path if needed

class TestExpenseTracker < Minitest::Test
  def test_add_expense
    tracker = ExpenseTracker.new
    tracker.add_expense("Pizza", "Dinner", 10.50)
    assert_equal 1, tracker.expenses.size
    assert_equal "Pizza", tracker.expenses[0][:name]
    assert_equal 10.50, tracker.expenses[0][:price]
  end

  def test_total_expenses
    tracker = ExpenseTracker.new
    tracker.add_expense("Notebook", "Office supply", 5.00)
    tracker.add_expense("Pen", "Stationery", 2.50)
    total = tracker.expenses.sum { |expense| expense[:price] }
    assert_equal 7.50, total
  end
end
