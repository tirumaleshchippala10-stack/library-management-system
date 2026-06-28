-- ===========================================
-- Library Management System Database Schema
-- ===========================================

CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INTEGER,
    FOREIGN KEY (author_id)
    REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INTEGER PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE Loans (
    loan_id INTEGER PRIMARY KEY,
    book_id INTEGER,
    member_id INTEGER,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id)
    REFERENCES Books(book_id),
    FOREIGN KEY (member_id)
    REFERENCES Members(member_id)
);
