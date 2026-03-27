USE library_db;

-- Thêm thể loại
INSERT INTO categories (category_name) VALUES 
('Khoa học'), ('Văn học'), ('Công nghệ'), ('Kinh tế'), ('Tâm lý');

-- Thêm sách
INSERT INTO books (isbn, title, author, publisher, publication_year, quantity, available_quantity) VALUES 
('978-604-73-1234-5', 'Clean Code', 'Robert C. Martin', 'Addison-Wesley', 2008, 5, 5),
('978-604-56-7890-1', 'Dế Mèn Phiêu Lưu Ký', 'Tô Hoài', 'Kim Đồng', 1941, 10, 8),
('978-604-12-3456-7', 'Atomic Habits', 'James Clear', 'Penguin', 2018, 7, 6);

-- Liên kết sách với thể loại
INSERT INTO book_categories (book_id, category_id) VALUES 
(1, 3), (2, 2), (3, 5);

-- Thêm thành viên
INSERT INTO members (full_name, email, phone, address) VALUES 
('Nguyễn Văn An', 'an.nguyen@gmail.com', '0901234567', 'Đồng Nai'),
('Trần Thị Bình', 'binh.tran@gmail.com', '0912345678', 'TP.HCM'),
('Lê Văn Cường', 'cuong.le@gmail.com', '0987654321', 'Bình Dương');

-- Thêm một số phiếu mượn mẫu
INSERT INTO borrowings (book_id, member_id, borrow_date, due_date, status) VALUES 
(1, 1, '2026-03-01', '2026-03-15', 'borrowed'),
(2, 2, '2026-03-10', '2026-03-24', 'borrowed');