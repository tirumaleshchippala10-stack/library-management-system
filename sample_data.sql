-- ===========================================
-- Sample Data for Library Management System
-- ===========================================

-- Authors

INSERT INTO Authors VALUES
(1,'J.K. Rowling'),
(2,'George Orwell'),
(3,'Paulo Coelho');

-- Books

INSERT INTO Books VALUES
(1,'Harry Potter',1),
(2,'1984',2),
(3,'The Alchemist',3);

-- Members

INSERT INTO Members VALUES
(1,'Rahul','rahul@gmail.com'),
(2,'Arjun','arjun@gmail.com'),
(3,'Priya','priya@gmail.com');

-- Loans

INSERT INTO Loans VALUES
(1,1,1,'2026-06-01','2026-06-15',NULL),
(2,2,2,'2026-06-05','2026-06-19','2026-06-18'),
(3,3,3,'2026-06-08','2026-06-22',NULL);
