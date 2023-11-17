Expense Sharing Application

This repository contains the backend implementation for an expense sharing application. The application allows users to add expenses, split them among different people, and keeps track of balances.



Database Schema
The application uses a relational database with the following schema:

Users: Information about users including userId, name, email, and mobile number.
Expenses: Details of each expense, including the payer, amount, expense type, and description.
ExpenseParticipants: Records the participants in each expense and their respective shares.
Balances: Keeps track of balances between users.
Class and Interface Design
The backend is designed using the following classes:

User: Represents a user with attributes like userId, name, email, and mobile number.
Expense: Represents an expense with details such as expenseId, payer, amount, expense type, and description.
Balance: Represents the balance between two users.
ExpenseManager: Manages the creation of expenses, simplification of balances, and retrieval of user balances and passbooks.
HTTP API Endpoints
The application exposes the following HTTP API endpoints:

POST /add_expense: Add a new expense.
GET /get_user_balances: Get balances for a specific user.
GET /show_passbook: Show the passbook for a user.

... (Add other endpoints as needed)




Asynchronous Email Sending
The application uses Celery to send emails asynchronously. A task is defined to send emails for expense notifications and weekly summaries.

Scheduler for Weekly Emails
Celery Beat is used to schedule a task that sends weekly email summaries to users.

Optional Requirements
 Expense names, notes, and images can be added.
 Split by share functionality is available.
 Passbook functionality to view user transactions.
Testing
Unit tests have been implemented to ensure the correctness of the application.

How to Run
Clone the repository.
Install dependencies (pip install -r requirements.txt).
Set up and configure the database.
Run the application (python app.py).
