USE project;

#insert to CATEGORIES
INSERT INTO CATEGORIES (category_id, category_name, description)
VALUES (1, 'Tiểu thuyết', 'Sách có nội dung hư cấu và nhân vật giả tưởng.'),
       (2, 'Phi hư cấu', 'Sách dựa trên thông tin thực tế và sự kiện có thật.'),
       (3, 'Khoa học viễn tưởng', 'Sách khám phá các ý tưởng tương lai và công nghệ.'),
       (4, 'Kỳ ảo', 'Sách có yếu tố phép thuật và thế giới huyền bí.'),
       (5, 'Lãng mạn', 'Sách tập trung vào các mối quan hệ tình cảm.'),
       (6, 'Trinh thám', 'Sách xoay quanh việc phá án hoặc khám phá bí mật.'),
       (7, 'Hồi hộp', 'Sách đầy kịch tính và tình huống căng thẳng.'),
       (8, 'Tiểu thuyết lịch sử', 'Sách lấy bối cảnh các thời kỳ lịch sử kèm yếu tố hư cấu.'),
       (9, 'Tâm lý', 'Sách về các vấn đề tâm lý và cảm xúc của con người.'),
       (10, 'Kinh dị', 'Sách gây sợ hãi và hồi hộp.'),
       (11, 'Hài hước', 'Sách mang tính giải trí và hài hước.'),
       (12, 'Truyện thiếu nhi', 'Sách dành cho trẻ em với nội dung nhẹ nhàng, ý nghĩa.'),
       (13, 'Sách giáo dục', 'Sách cung cấp kiến thức và kỹ năng học thuật.'),
       (14, 'Hướng dẫn kỹ năng', 'Sách hướng dẫn về các kỹ năng sống và làm việc.'),
       (15, 'Tự truyện', 'Sách kể về cuộc đời của một cá nhân.'),
       (16, 'Thơ ca', 'Tập hợp các bài thơ và tác phẩm văn học.'),
       (17, 'Sách nghệ thuật', 'Sách về nghệ thuật, hội họa, và thiết kế.'),
       (18, 'Triết học', 'Sách về các chủ đề triết học và tư duy nhân sinh.'),
       (19, 'Nấu ăn', 'Sách hướng dẫn nấu ăn và công thức món ăn.'),
       (20, 'Sách du lịch', 'Sách hướng dẫn và khám phá địa điểm du lịch.');


#Insert to Publisher
INSERT INTO PUBLISHERS (publisher_id, publisher_name, contact, address)
VALUES (1, 'Nhà xuất bản Kim Đồng', '0243 123 4567', 'Số 123, Phố Lê Duẩn, Hà Nội'),
       (2, 'Nhà xuất bản Trẻ', '0283 654 3210', 'Số 89, Đường Nguyễn Văn Cừ, TP. Hồ Chí Minh'),
       (3, 'Nhà xuất bản Thanh Niên', '0243 876 5432', 'Số 45, Phố Mai Hắc Đế, Hà Nội'),
       (4, 'Nhà xuất bản Hồng Đức', '0283 333 4444', 'Số 78, Đường Lý Thường Kiệt, TP. Hồ Chí Minh'),
       (5, 'Nhà xuất bản Đại học Quốc gia Hà Nội', '0243 567 8901', 'Số 144, Đường Xuân Thủy, Hà Nội'),
       (6, 'Nhà xuất bản Phụ Nữ', '0283 222 6666', 'Số 112, Đường Nguyễn Thị Minh Khai, TP. Hồ Chí Minh'),
       (7, 'Nhà xuất bản Dân Trí', '0243 111 2222', 'Số 256, Phố Trần Phú, Hà Nội'),
       (8, 'Nhà xuất bản Từ điển Bách khoa', '0283 999 8888', 'Số 66, Đường Cách Mạng Tháng 8, TP. Hồ Chí Minh'),
       (9, 'Nhà xuất bản Sáng tạo', '0243 345 6789', 'Số 12, Phố Giải Phóng, Hà Nội'),
       (10, 'Nhà xuất bản Văn Học', '0283 567 1234', 'Số 58, Đường Nguyễn Huệ, TP. Hồ Chí Minh'),
       (11, 'Nhà xuất bản Lao Động', '0243 222 3333', 'Số 44, Phố Cầu Giấy, Hà Nội'),
       (12, 'Nhà xuất bản Hương Giang', '0283 555 4444', 'Số 300, Đường Nguyễn Lương Bằng, TP. Hồ Chí Minh'),
       (13, 'Nhà xuất bản Thế Giới', '0243 678 9012', 'Số 25, Đường Lê Hồng Phong, Hà Nội'),
       (14, 'Nhà xuất bản Kim Sa', '0283 333 9999', 'Số 102, Đường Phan Văn Trị, TP. Hồ Chí Minh'),
       (15, 'Nhà xuất bản Văn Khoa', '0243 444 5555', 'Số 90, Phố Nguyễn Chí Thanh, Hà Nội'),
       (16, 'Nhà xuất bản Tri Thức', '0283 777 6666', 'Số 120, Đường Võ Thị Sáu, TP. Hồ Chí Minh'),
       (17, 'Nhà xuất bản Nhã Nam', '0243 988 1122', 'Số 99, Phố Láng Hạ, Hà Nội'),
       (18, 'Nhà xuất bản Thời Đại', '0283 111 7777', 'Số 35, Đường Phan Đình Phùng, TP. Hồ Chí Minh'),
       (19, 'Nhà xuất bản Tự Do', '0243 333 4444', 'Số 15, Đường Tràng Tiền, Hà Nội'),
       (20, 'Nhà xuất bản Khoa Học', '0283 888 9999', 'Số 65, Đường Nguyễn Tất Thành, TP. Hồ Chí Minh');

# Insert to BOOKS
INSERT INTO BOOKS (book_id, price, book_name, stock, description, category_id, publisher_id)
VALUES (1, 150000, 'Đắc Nhân Tâm', 100, 'Cuốn sách về nghệ thuật đối nhân xử thế', 14, 1),
       (2, 180000, 'Harry Potter và Hòn đá Phù thủy', 150, 'Phần đầu series Harry Potter', 4, 2),
       (3, 120000, 'Nhà Giả Kim', 80, 'Câu chuyện về hành trình tìm kiếm ý nghĩa cuộc sống', 1, 3),
       (4, 200000, 'Sherlock Holmes', 120, 'Tuyển tập truyện trinh thám', 6, 4),
       (5, 90000, 'Dấu chân trên cát', 60, 'Tập thơ về tình yêu và cuộc sống', 16, 5),
       (6, 160000, 'Vũ trụ trong lòng bàn tay', 70, 'Sách về khoa học vũ trụ', 2, 6),
       (7, 140000, 'Doraemon', 200, 'Truyện tranh thiếu nhi nổi tiếng', 12, 7),
       (8, 250000, 'Lịch sử văn minh thế giới', 40, 'Sách về lịch sử các nền văn minh', 8, 8),
       (9, 170000, 'Tâm lý học đám đông', 90, 'Nghiên cứu về tâm lý học xã hội', 9, 9),
       (10, 130000, 'Những người khốn khổ', 60, 'Tiểu thuyết lịch sử nổi tiếng', 8, 10),
       (11, 110000, 'Đồ ăn Việt Nam', 100, 'Sách dạy nấu các món ăn Việt', 19, 11),
       (12, 190000, 'Du lịch Châu Á', 50, 'Hướng dẫn du lịch các nước Châu Á', 20, 12),
       (13, 220000, 'Nghệ thuật tối giản', 80, 'Sách về lối sống tối giản', 14, 13),
       (14, 160000, 'Triết học Phương Đông', 40, 'Giới thiệu về triết học phương Đông', 18, 14),
       (15, 140000, 'Hoa vẽ trên tường', 70, 'Tiểu thuyết lãng mạn', 5, 15),
       (16, 180000, 'Mật mã Da Vinci', 110, 'Tiểu thuyết trinh thám', 6, 16),
       (17, 150000, 'Khởi nghiệp thông minh', 60, 'Sách hướng dẫn khởi nghiệp', 14, 17),
       (18, 130000, 'Nghệ thuật vẽ tranh', 50, 'Sách hướng dẫn vẽ', 17, 18),
       (19, 200000, 'Chiến tranh và Hòa bình', 30, 'Tiểu thuyết lịch sử', 8, 19),
       (20, 170000, 'Vũ trụ song song', 90, 'Tiểu thuyết khoa học viễn tưởng', 3, 20);


# Insert to USERS
INSERT INTO USERS (user_id, username, password, email, date_created, role, reports_to)
VALUES (1, 'admin', 'admin123', 'admin@bookstore.com', '2023-01-01', 'admin', NULL),
       (2, 'manager1', 'mng123', 'manager1@bookstore.com', '2023-01-15', 'manager', 1),
       (3, 'manager2', 'mng456', 'manager2@bookstore.com', '2023-01-20', 'manager', 1),
       (4, 'staff1', 'staff123', 'staff1@bookstore.com', '2023-02-01', 'staff', 2),
       (5, 'staff2', 'staff456', 'staff2@bookstore.com', '2023-02-05', 'staff', 2),
       (6, 'staff3', 'staff789', 'staff3@bookstore.com', '2023-02-10', 'staff', 3),
       (7, 'staff4', 'staff321', 'staff4@bookstore.com', '2023-02-15', 'staff', 3),
       (8, 'user1', 'user123', 'user1@email.com', '2023-03-01', 'customer', NULL),
       (9, 'user2', 'user456', 'user2@email.com', '2023-03-05', 'customer', NULL),
       (10, 'user3', 'user789', 'user3@email.com', '2023-03-10', 'customer', NULL),
       (11, 'user4', 'user321', 'user4@email.com', '2023-03-15', 'customer', NULL),
       (12, 'user5', 'user654', 'user5@email.com', '2023-03-20', 'customer', NULL),
       (13, 'user6', 'user987', 'user6@email.com', '2023-03-25', 'customer', NULL),
       (14, 'user7', 'user147', 'user7@email.com', '2023-04-01', 'customer', NULL),
       (15, 'user8', 'user258', 'user8@email.com', '2023-04-05', 'customer', NULL),
       (16, 'user9', 'user369', 'user9@email.com', '2023-04-10', 'customer', NULL),
       (17, 'user10', 'user159', 'user10@email.com', '2023-04-15', 'customer', NULL),
       (18, 'staff5', 'staff951', 'staff5@bookstore.com', '2023-04-20', 'staff', 2),
       (19, 'staff6', 'staff753', 'staff6@bookstore.com', '2023-04-25', 'staff', 3),
       (20, 'user11', 'user852', 'user11@email.com', '2023-05-01', 'customer', NULL);


#Insert to AUTHORS
INSERT INTO AUTHORS (author_id, author_name, date_of_birth, biography, nationality)
VALUES (1, 'Dale Carnegie', '1888-11-24', 'Tác giả người Mỹ chuyên viết về kỹ năng sống', 'Mỹ'),
       (2, 'J.K. Rowling', '1965-07-31', 'Nhà văn người Anh, tác giả series Harry Potter', 'Anh'),
       (3, 'Paulo Coelho', '1947-08-24', 'Nhà văn người Brazil nổi tiếng với các tiểu thuyết tâm linh', 'Brazil'),
       (4, 'Arthur Conan Doyle', '1859-05-22', 'Cha đẻ của thám tử Sherlock Holmes', 'Scotland'),
       (5, 'Xuân Quỳnh', '1942-10-06', 'Nữ thi sĩ Việt Nam nổi tiếng với thơ tình', 'Việt Nam'),
       (6, 'Neil deGrasse Tyson', '1958-10-05', 'Nhà thiên văn học và tác giả khoa học phổ thông', 'Mỹ'),
       (7, 'Fujiko F. Fujio', '1933-12-01', 'Họa sĩ truyện tranh Nhật Bản', 'Nhật Bản'),
       (8, 'Will Durant', '1885-11-05', 'Sử gia và triết gia người Mỹ', 'Mỹ'),
       (9, 'Gustave Le Bon', '1841-05-07', 'Nhà tâm lý học xã hội người Pháp', 'Pháp'),
       (10, 'Victor Hugo', '1802-02-26', 'Đại văn hào Pháp', 'Pháp'),
       (11, 'Nguyễn Thị Diệu Thảo', '1975-03-15', 'Đầu bếp và tác giả ẩm thực', 'Việt Nam'),
       (12, 'Trần Đăng Khoa', '1980-06-20', 'Nhà văn và nhà báo du lịch', 'Việt Nam'),
       (13, 'Marie Kondo', '1984-10-09', 'Chuyên gia về sự ngăn nắp người Nhật', 'Nhật Bản'),
       (14, 'Thích Nhất Hạnh', '1926-10-11', 'Thiền sư và tác giả về triết học Phật giáo', 'Việt Nam'),
       (15, 'Nguyễn Phong Việt', '1980-08-08', 'Nhà thơ trẻ chuyên viết về tình yêu', 'Việt Nam'),
       (16, 'Dan Brown', '1964-06-22', 'Tác giả tiểu thuyết trinh thám nổi tiếng', 'Mỹ'),
       (17, 'Eric Ries', '1978-09-22', 'Doanh nhân và tác giả sách khởi nghiệp', 'Mỹ'),
       (18, 'Betty Edwards', '1926-06-15', 'Giáo sư nghệ thuật và tác giả sách hội họa', 'Mỹ'),
       (19, 'Leo Tolstoy', '1828-09-09', 'Đại văn hào Nga', 'Nga'),
       (20, 'Stephen Hawking', '1942-01-08', 'Nhà vật lý lý thuyết và tác giả khoa học', 'Anh');


#Insert to BOOK_AUTHOR
INSERT INTO BOOK_AUTHOR (book_id, author_id)
VALUES (1, 1),   # Đắc Nhân Tâm - Dale Carnegie
       (2, 2),   # Harry Potter - J.K. Rowling
       (3, 3),   # Nhà Giả Kim - Paulo Coelho
       (4, 4),   # Sherlock Holmes - Arthur Conan Doyle
       (5, 5),   # Dấu chân trên cát - Xuân Quỳnh
       (6, 6),   # Vũ trụ trong lòng bàn tay - Neil deGrasse Tyson
       (7, 7),   # Doraemon - Fujiko F. Fujio
       (8, 8),   # Lịch sử văn minh thế giới - Will Durant
       (9, 9),   # Tâm lý học đám đông - Gustave Le Bon
       (10, 10), # Những người khốn khổ - Victor Hugo
       (11, 11), # Đồ ăn Việt Nam - Nguyễn Thị Diệu Thảo
       (12, 12), # Du lịch Châu Á - Trần Đăng Khoa
       (13, 13), # Nghệ thuật tối giản - Marie Kondo
       (14, 14), # Triết học Phương Đông - Thích Nhất Hạnh
       (15, 15), # Hoa vẽ trên tường - Nguyễn Phong Việt
       (16, 16), # Mật mã Da Vinci - Dan Brown
       (17, 17), # Khởi nghiệp thông minh - Eric Ries
       (18, 18), # Nghệ thuật vẽ tranh - Betty Edwards
       (19, 19), # Chiến tranh và Hòa bình - Leo Tolstoy
       (20, 20);
# Vũ trụ song song - Stephen Hawking

#Insert to CARTS
INSERT INTO CARTS (book_id, user_id, quantity_ordered)
VALUES (1, 8, 2),   # user1 mua 2 cuốn Đắc Nhân Tâm
       (2, 8, 1),   # user1 mua 1 cuốn Harry Potter
       (3, 9, 3),   # user2 mua 3 cuốn Nhà Giả Kim
       (4, 10, 1),  # user3 mua 1 cuốn Sherlock Holmes
       (5, 11, 2),  # user4 mua 2 cuốn Dấu chân trên cát
       (7, 12, 4),  # user5 mua 4 cuốn Doraemon
       (10, 13, 1), # user6 mua 1 cuốn Những người khốn khổ
       (12, 14, 2), # user7 mua 2 cuốn Du lịch Châu Á
       (15, 15, 1), # user8 mua 1 cuốn Hoa vẽ trên tường
       (16, 16, 3), # user9 mua 3 cuốn Mật mã Da Vinci
       (18, 17, 1), # user10 mua 1 cuốn Nghệ thuật vẽ tranh
       (20, 20, 2);
# user11 mua 2 cuốn Vũ trụ song song

#Insert to REVIEWS
INSERT INTO REVIEWS (review_id, user_id, book_id, comment, rating, review_date)
VALUES (1, 8, 1, 'Sách rất hay và bổ ích, giúp tôi cải thiện kỹ năng giao tiếp', 5, '2023-06-01'),
       (2, 8, 2, 'Câu chuyện cuốn hút từ đầu đến cuối', 5, '2023-06-02'),
       (3, 9, 3, 'Một cuốn sách đầy ý nghĩa về hành trình khám phá bản thân', 4, '2023-06-03'),
       (4, 10, 4, 'Những vụ án ly kỳ và hấp dẫn', 5, '2023-06-04'),
       (5, 11, 5, 'Thơ hay và sâu lắng', 4, '2023-06-05'),
       (6, 12, 7, 'Truyện tranh vui nhộn, phù hợp cho trẻ em', 5, '2023-06-06'),
       (7, 13, 10, 'Tác phẩm kinh điển, đáng đọc', 5, '2023-06-07'),
       (8, 14, 12, 'Hướng dẫn du lịch chi tiết và hữu ích', 4, '2023-06-08'),
       (9, 15, 15, 'Câu chuyện tình cảm nhẹ nhàng', 3, '2023-06-09'),
       (10, 16, 16, 'Cốt truyện gay cấn, lôi cuốn', 5, '2023-06-10'),
       (11, 17, 18, 'Sách hướng dẫn vẽ dễ hiểu', 4, '2023-06-11'),
       (12, 20, 20, 'Nội dung khoa học thú vị', 4, '2023-06-12');

#Insert to COUPONS
INSERT INTO COUPONS (coupon_id, coupon_name, discount, start_date, end_date, stock)
VALUES (1, 'WELCOME2024', 0.15, '2024-01-01', '2024-01-31', 100),
       (2, 'SPRING2024', 0.20, '2024-02-01', '2024-02-29', 50),
       (3, 'SUMMER50', 0.50, '2024-06-01', '2024-06-30', 30),
       (4, 'BOOKWEEK', 0.25, '2024-03-15', '2024-03-22', 200),
       (5, 'FLASH10', 0.10, '2024-04-01', '2024-04-03', 150),
       (6, 'HOLIDAY30', 0.30, '2024-12-20', '2024-12-31', 80),
       (7, 'BACKTOSCHOOL', 0.35, '2024-08-15', '2024-09-15', 120),
       (8, 'READER2024', 0.15, '2024-01-01', '2024-12-31', 500),
       (9, 'VIP40', 0.40, '2024-05-01', '2024-05-07', 25),
       (10, 'BLACKFRIDAY', 0.60, '2024-11-25', '2024-11-26', 100);

#Insert to ORDERS
INSERT INTO ORDERS (order_id, user_id, coupon_id, order_date, required_date, shipped_date, status)
VALUES (1, 8, 1, '2024-01-05', '2024-01-08', '2024-01-07', 'Delivered'),
       (2, 9, 1, '2024-01-06', '2024-01-09', '2024-01-08', 'Delivered'),
       (3, 10, 2, '2024-02-01', '2024-02-04', '2024-02-03', 'Delivered'),
       (4, 11, NULL, '2024-02-15', '2024-02-18', '2024-02-17', 'Delivered'),
       (5, 12, 4, '2024-03-16', '2024-03-19', NULL, 'Processing'),
       (6, 13, 4, '2024-03-17', '2024-03-20', '2024-03-19', 'Delivered'),
       (7, 14, 5, '2024-04-01', '2024-04-04', '2024-04-03', 'Delivered'),
       (8, 15, NULL, '2024-04-02', '2024-04-05', NULL, 'Cancelled'),
       (9, 16, 9, '2024-05-02', '2024-05-05', '2024-05-04', 'Delivered'),
       (10, 17, 9, '2024-05-03', '2024-05-06', NULL, 'Processing'),
       (11, 8, NULL, '2024-01-15', '2024-01-18', '2024-01-17', 'Delivered'),
       (12, 9, 2, '2024-02-10', '2024-02-13', '2024-02-12', 'Delivered'),
       (13, 10, 4, '2024-03-18', '2024-03-21', '2024-03-20', 'Delivered'),
       (14, 11, 5, '2024-04-02', '2024-04-05', NULL, 'Processing'),
       (15, 12, NULL, '2024-01-20', '2024-01-23', '2024-01-22', 'Delivered');

#Insert to ORDER_DETAILS
INSERT INTO ORDERDETAILS (order_id, book_id, quantity_ordered, price_each)
VALUES (1, 1, 2, 150000),
       (1, 2, 1, 180000),
       (2, 3, 3, 120000),
       (3, 4, 1, 200000),
       (4, 5, 2, 90000),
       (5, 7, 4, 140000),
       (6, 10, 1, 130000),
       (7, 12, 2, 190000),
       (8, 15, 1, 140000),
       (9, 16, 3, 180000),
       (10, 18, 1, 130000),
       (11, 1, 1, 150000),
       (12, 3, 2, 120000),
       (13, 4, 2, 200000),
       (14, 6, 1, 160000),
       (15, 8, 1, 250000);