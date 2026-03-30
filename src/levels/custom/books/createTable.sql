CREATE TABLE if not exists book_sales (
    sale_id INT PRIMARY KEY,
    book_id INT,
    book_title VARCHAR(100),
    author VARCHAR(50),
    category VARCHAR(20),
    publisher VARCHAR(50),
    price DECIMAL(6,2),
    quantity INT,
    sale_date DATE,
    customer_age INT,
    customer_gender CHAR(1),
    discount_rate DECIMAL(3,3)
);

INSERT INTO book_sales (sale_id, book_id, book_title, author, category, publisher, price, quantity, sale_date, customer_age, customer_gender, discount_rate) VALUES
-- Literature
(1, 101, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Literature', 'Penguin Random House', 45.00, 3, '2024-01-05', 28, 'F', 0.900),
(2, 102, 'To Live', 'Yu Hua', 'Literature', 'HarperCollins', 35.00, 2, '2024-01-08', 35, 'M', 0.850),
(3, 103, 'Fortress Besieged', 'Qian Zhongshu', 'Literature', 'Penguin Random House', 42.00, 1, '2024-01-12', 45, 'F', 0.800),
(4, 101, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Literature', 'Penguin Random House', 45.00, 2, '2024-01-15', 32, 'M', 0.900),
(5, 104, 'Dream of the Red Chamber', 'Cao Xueqin', 'Literature', 'Oxford University Press', 68.00, 1, '2024-01-18', 52, 'F', 0.750),
(6, 102, 'To Live', 'Yu Hua', 'Literature', 'HarperCollins', 35.00, 4, '2024-01-22', 29, 'F', 0.850),

-- Technology
(11, 201, 'Python Programming', 'Mark Lutz', 'Technology', 'O''Reilly Media', 89.00, 2, '2024-01-03', 26, 'M', 0.900),
(12, 202, 'Java Core Technology', 'Cay Horstmann', 'Technology', 'Pearson', 128.00, 1, '2024-01-07', 30, 'M', 0.850),
(13, 203, 'Introduction to Algorithms', 'Thomas Cormen', 'Technology', 'MIT Press', 158.00, 1, '2024-01-10', 28, 'M', 0.800),
(14, 201, 'Python Programming', 'Mark Lutz', 'Technology', 'O''Reilly Media', 89.00, 3, '2024-01-14', 24, 'F', 0.900),
(15, 204, 'Deep Learning', 'Ian Goodfellow', 'Technology', 'MIT Press', 178.00, 1, '2024-01-20', 33, 'M', 0.750),

-- Education
(21, 301, 'Advanced Mathematics', 'James Stewart', 'Education', 'Cengage Learning', 56.00, 5, '2024-01-02', 20, 'M', 0.950),
(22, 302, 'College English', 'Diane Larsen-Freeman', 'Education', 'Cambridge University Press', 48.00, 3, '2024-01-06', 19, 'F', 0.950),
(23, 303, 'Linear Algebra', 'Gilbert Strang', 'Education', 'Wellesley-Cambridge Press', 42.00, 4, '2024-01-11', 21, 'M', 0.950),
(24, 301, 'Advanced Mathematics', 'James Stewart', 'Education', 'Cengage Learning', 56.00, 2, '2024-01-16', 22, 'F', 0.950),
(25, 304, 'Probability Theory', 'Sheldon Ross', 'Education', 'Academic Press', 45.00, 3, '2024-01-25', 20, 'M', 0.950),

-- Lifestyle
(31, 401, 'The Art of Wellness', 'Andrew Weil', 'Lifestyle', 'Houghton Mifflin', 38.00, 2, '2024-01-04', 55, 'F', 0.800),
(32, 402, 'Home Cooking', 'Julia Child', 'Lifestyle', 'Knopf', 32.00, 3, '2024-01-09', 42, 'F', 0.850),
(33, 403, 'Parenting Guide', 'Benjamin Spock', 'Lifestyle', 'Pocket Books', 45.00, 1, '2024-01-13', 28, 'F', 0.800),
(34, 401, 'The Art of Wellness', 'Andrew Weil', 'Lifestyle', 'Houghton Mifflin', 38.00, 4, '2024-01-19', 48, 'M', 0.800),
(35, 404, 'Personal Finance', 'Robert Kiyosaki', 'Lifestyle', 'Warner Books', 52.00, 2, '2024-01-23', 35, 'M', 0.750),

-- History
(41, 501, 'Records of the Historian', 'Sima Qian', 'History', 'Columbia University Press', 88.00, 1, '2024-01-01', 38, 'M', 0.700),
(42, 502, 'The Ming Dynasty', 'Ray Huang', 'History', 'Yale University Press', 35.00, 2, '2024-01-17', 33, 'M', 0.850),
(43, 503, 'A History of China', 'John King Fairbank', 'History', 'Belknap Press', 128.00, 1, '2024-01-21', 45, 'F', 0.750),
(44, 502, 'The Ming Dynasty', 'Ray Huang', 'History', 'Yale University Press', 35.00, 3, '2024-01-26', 29, 'F', 0.850),

-- Economics
(51, 601, 'Principles of Economics', 'N. Gregory Mankiw', 'Economics', 'Cengage Learning', 98.00, 1, '2024-01-24', 27, 'M', 0.800),
(52, 602, 'Investment Strategies', 'Benjamin Graham', 'Economics', 'McGraw-Hill', 68.00, 2, '2024-01-27', 40, 'M', 0.750),
(53, 603, 'Macroeconomics', 'Paul Samuelson', 'Economics', 'McGraw-Hill', 108.00, 1, '2024-01-29', 32, 'F', 0.800);
