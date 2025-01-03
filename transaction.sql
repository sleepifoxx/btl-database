-- TRANSACTION -- 
USE project;
START TRANSACTION;

-- Change author' nationality abbreviation --
UPDATE AUTHORS 
SET nationality = "VN" 
WHERE nationality = "Việt Nam";

-- Add more records into PUBLISHERS relation --
INSERT INTO PUBLISHERS (publisher_id, publisher_name, contact, address)
VALUES 
(21, 'Nhà xuất bản Giáo dục Việt Nam', '0243 822 0801', 'Số 81 Phố Trần Hưng Đạo, Hà Nội'),
(22, 'Nhà xuất bản Chính trị quốc gia Sự thật', '0292 383 9833', 'Số 6 Ngõ 86 Phố Duy Tân, Hà Nội'),
(23, 'Nhà xuất bản Tư pháp', '0286 290 9088', 'Số 35 Phố Trần Quốc Toản Hà Nội');

-- Delete a coupon --
DELETE FROM COUPONS
WHERE coupon_id = 10;

ROLLBACK;


