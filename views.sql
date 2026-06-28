-- View: Borrowed Books

CREATE VIEW BorrowedBooks AS
SELECT
    Members.member_name,
    Books.title,
    Loans.issue_date,
    Loans.due_date
FROM Loans
JOIN Members
ON Loans.member_id = Members.member_id
JOIN Books
ON Loans.book_id = Books.book_id
WHERE Loans.return_date IS NULL;
