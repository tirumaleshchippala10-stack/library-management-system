-- Total Books

SELECT COUNT(*) AS TotalBooks
FROM Books;

-- Total Members

SELECT COUNT(*) AS TotalMembers
FROM Members;

-- Borrowed Books

SELECT COUNT(*) AS BorrowedBooks
FROM Loans
WHERE return_date IS NULL;

-- Books Per Author

SELECT
Authors.author_name,
COUNT(Books.book_id) AS TotalBooks
FROM Authors
JOIN Books
ON Authors.author_id = Books.author_id
GROUP BY Authors.author_name;
