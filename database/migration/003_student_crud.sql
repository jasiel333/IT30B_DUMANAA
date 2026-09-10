-- book SQL#1 : select all books
SELECT * FROM books;

-- book SQL#2 : select books in asc order by id

SELECT * FROM books
ORDER BY book_id ASC;


-- book SQL#3 : select books in desc order by id

SELECT * FROM books
ORDER BY book_id DESC;


-- book SQL#4 : select books in asc order by title

SELECT * FROM books
ORDER BY book_title ASC;


-- book SQL#5 : select books in desc order by title

SELECT * FROM books
ORDER BY book_title DESC;


-- book SQL#6 : select books in asc order by author

SELECT * FROM books
ORDER BY book_author ASC;


-- book SQL#7 : select books in desc order by author

SELECT * FROM books
ORDER BY book_author DESC;


-- You can modify displayed columns by selecting
-- specific columns after SELECT command

-- book SQL#8 : display all books' titles and authors

SELECT book_title,
       book_author
FROM books
ORDER BY book_title ASC;


-- book SQL#9 : LIMIT 1 - you can change the limit to any number

SELECT book_title,
       book_author
FROM books
ORDER BY book_title ASC

LIMIT 1;


-- book SQL#10 : Select a book based on id
SELECT book_title,
       book_author,
       book_category
FROM books
WHERE book_id = 1
LIMIT 1;

-- book SQL#11 : update book title and author based on id

UPDATE books
SET book_title = 'Over flow',
    book_author = 'nopets Allowed akira',
    book_category = '18+'
WHERE book_id = 1;