CREATE TABLE borrow (
    borrow_id
);

SELECT br.borrow_id, s.student_id,
     CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course;
     b.book_title, b.book_author, b.book_category,
     br.borrow_date,br.borrow_return_date
FROM borrow br
     JOIN students s ON br.student_id = s.student_id
     JOIN books b ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NULL
ORDER BY br.borrow_date DESC;

-- Alter the borrow_return_date column to allow NULL values and set default to NULL
ALTER TABLE borrow
MODIFY borrow_return_date TIMESTAMP NULL DEFAULT NULL;

UPDATE borrow
SET borrow_return_date = NUll
WHERE borrow_return_date = '2026-08-25 08:18:22';

--
UPDATE borrow
SET borrow_return_date = CURRENT_TIMESTAMP
--
WHERE borrow_id = 1 AND borrow_return_date IS NULL;


SELECT br.borrow_id, s.student_id,
     CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name,
     b.book_title, b.book_author, b.book_category,
     br.borrow_date,br.borrow_return_date
FROM borrow br
     JOIN students s ON br.student_id = s.student_id
     JOIN books b ON br.book_id = b.book_id
WHERE br.borrow_return_date IS NOT NULL
ORDER BY br.borrow_date DESC;
