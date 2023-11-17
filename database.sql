CREATE TABLE User (
    userId VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    mobileNumber VARCHAR(15)
);

CREATE TABLE Expense (
    expenseId VARCHAR(50) PRIMARY KEY,
    amount DECIMAL(10, 2),
    expenseType ENUM('EQUAL', 'EXACT', 'PERCENT'),
    createdByUserId VARCHAR(50) REFERENCES User(userId),
    createdDate TIMESTAMP
);

CREATE TABLE Participant (
    participantId VARCHAR(50) PRIMARY KEY,
    expenseId VARCHAR(50) REFERENCES Expense(expenseId),
    userId VARCHAR(50) REFERENCES User(userId),
    shareAmount DECIMAL(10, 2),
    paidShare DECIMAL(10, 2)
);
