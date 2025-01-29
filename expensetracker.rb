class ExpenseTracker
  attr_accessor :expenses

  def initialize
    @expenses = [] # Store expenses as an array of hashes
  end

  def add_expense(name, description, price)
    if price > 0
      @expenses << { name: name, description: description, price: price }
      puts "Expense added: #{name} - #{description} - $#{price}"
    else
      puts "Invalid price. Must be greater than 0."
    end
  end

  def display_expenses
    if @expenses.empty?
      puts "No expenses recorded."
    else
      puts "Expenses:"
      @expenses.each_with_index do |expense, index|
        puts "#{index + 1}. #{expense[:name]} - #{expense[:description]} - $#{'%.2f' % expense[:price]}"
      end
    end
  end

  def total_expenses
    total = @expenses.sum { |expense| expense[:price] }
    puts "Total expenses: $#{'%.2f' % total}"
  end
end

tracker = ExpenseTracker.new
print "Enter the name of the expense: "
name = gets.chomp
print "Enter the description of the expense: "
description = gets.chomp
print "Enter the price of the expense: "
price = gets.chomp.to_f

tracker.add_expense(name, description, price)

tracker.display_expenses

tracker.total_expenses
