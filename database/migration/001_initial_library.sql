-- #1 students table
CREATE TABLE IF NOT EXISTS students (
    -- Primary key for the students table
    student_id INT PRIMARY KEY AUTO_INCREMENT,

    -- Student name
    student_first_name VARCHAR(50) NOT NULL,
    student_last_name VARCHAR(50) NOT NULL,

    -- Student course
    student_course VARCHAR(50) NOT NULL

    -- Student created at timestamp
    student_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP
        
)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- #2 books table
CREATE TABLE IF NOT EXISTS books(
    -- Primary key for books table
    book_id INT PRIMARY KEY AUTO_INCREMENT,

    -- Book details
    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(100) NOT NULL,

    -- Book created at timestamp
    book_created_at TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- #3 borrow table
CREATE TABLE IF NOT EXISTS borrow(
    -- Primary key for borrow table
    borrow_id INT  AUTO_INCREMENT PRIMARY KEY,

    -- Foreign keys references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    -- Borrow timestamp not null by default
    borrow_date TIMESTAMP NOT NULL
        DEFAULT CURRENT_TIMESTAMP,

    -- Borrow return timestamp null by default
    borrow_return_date TIMESTAMP NULL 
    DEFAULT NULL,

    -- Borrow table constraints and foreign keys
    CONSTRAINT fk_borrow_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_borrow_book
        FOREIGN KEY (book_id)
        REFERENCES books(book_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- Insert statement #1 insert students
INSERT INTO students(
    student_first_name,
    student_last_name,
    student_course
) VALUES 
('JASIEL', 'DUMANA', 'BSIT'),
('JOHN', 'DOE', 'BSCS'),
('JANE', 'SMITH', 'ITE'),
('MICHAEL', 'JOHNSON', 'AGRICULTURE');

-- Insert statement #2 insert book
INSERT INTO books (
    book_title,
    book_author,
    book_category,
)VALUES 
('The Midnight Library', 'Matt Haig', 'Fiction/Contemporary Fantasy'),
('The Silent Patient', 'Alex Michaelides', 'Psychological Thriller'),
('Psychological Thriller', 'Andy Weir', 'Science Fiction / Hard Sci-Fi');

-- Insert statement #3 insert borrow
INSERT INTO borrow (
    student_id,
    book_id
)VALUES
   (1, 2),
   (2, 3),
   (3, 1);
