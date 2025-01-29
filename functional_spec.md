# Expense Tracker CLI Functional Specification

The Expense CLI app provides users with a simple, command-line interface to record expenses. The app asks the user for the name, description, and price of an expense.

## User Stories

### Basic Operations

- As a user, I want to enter an expense with a name, description, and price, so that I can keep track of my spending.
- As a user, I want to see a list of all my expenses, so that I can review my past spending.
- As a user, I want to see the total amount of my expenses, so that I know how much money I have spent.

### User Interaction
- he program asks the user for an item name, description, and price.
- The user enters the values one by one.

### Potential Errors
- If the user enters a negative price, the system should show an error message.
- If no expenses exist, the system should inform the user.
