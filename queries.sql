-- ===========================================
-- Library Management System Queries
-- ===========================================

-- 1. Display all books

SELECT * FROM Books;

-- 2. Display all members

SELECT * FROM Members;

-- 3. Show books with their authors

SELECT
    Books.title,
    Authors.author_name
FROM Books
JOIN Authors
ON Books.author_id = Authors.author_id;

-- 4. Show which member borrowed which book

SELECT
    Members.member_name,
    Books.title,
    Loans.issue_date,
    Loans.due_date,
    Loans.return_date
FROM Loans
JOIN Members
ON Loans.member_id = Members.member_id
JOIN Books
ON Loans.book_id = Books.book_id;

-- 5. Show books that are not yet returned

SELECT
    Members.member_name,
    Books.title
FROM Loans
JOIN Members
ON Loans.member_id = Members.member_id
JOIN Books
ON Loans.book_id = Books.book_id
WHERE return_date IS NULL;

-- 6. Count total books

SELECT COUNT(*) AS TotalBooks
FROM Books;

-- 7. Count total members

SELECT COUNT(*) AS TotalMembers
FROM Members;
-- Find overdue books

SELECT Members.member_name,
       Books.title,
       Loans.due_date
FROM Loans
JOIN Members ON Loans.member_id = Members.member_id
JOIN Books ON Loans.book_id = Books.book_id
WHERE Loans.return_date IS NULL;

-- Count books by author

SELECT Authors.author_name,
       COUNT(Books.book_id) AS TotalBooks
FROM Authors
JOIN Books ON Authors.author_id = Books.author_id
GROUP BY Authors.author_name;

-- Find all borrowed books

SELECT Books.title,
       Members.member_name
FROM Loans
JOIN Books ON Loans.book_id = Books.book_id
JOIN Members ON Loans.member_id = Members.member_id;

