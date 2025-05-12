-- /* Library Management System - MySQL Database Schema */

-- Create Users Table
-- CREATE TABLE Users (
--     user_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     phone VARCHAR(15),
--     registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
--  );

 -- Create Authors Table
-- CREATE TABLE Authors (
--     author_id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     bio TEXT
-- );

-- Create Categories Table
-- CREATE TABLE Categories (
--     category_id INT AUTO_INCREMENT PRIMARY KEY,
--     category_name VARCHAR(100) UNIQUE NOT NULL
-- );

 -- Create Books Table-- 
-- CREATE TABLE Books (
--     book_id INT AUTO_INCREMENT PRIMARY KEY,
--     title VARCHAR(255) NOT NULL,
--     author_id INT NOT NULL,
--     category_id INT,
--     publication_year YEAR,
--     isbn VARCHAR(13) UNIQUE,
--     FOREIGN KEY (author_id) REFERENCES Authors(author_id) ON DELETE CASCADE,
--     FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL
-- );

-- -- Create BorrowRecords Table
CREATE TABLE BorrowRecords (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATETIME NOT NULL,
    return_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);
