-- insert
INSERT INTO Ausers2(email) VALUES ('risano@gmail.com');

INSERT INTO Ausers2(id, email, full_name, phone, addres) VALUES (1, 'akbar@gmail.com', 'risano akbar', '08123123123', 'jakarta');


-- READ DATA
SELECT email from Ausers2;
-- READ DATA dengan menampilkan hanya beberapa field saja
SELECT id AS kode, email, full_name AS nama_lengkap FROM useraja;

-- READ DATA dengan menampilkan semua field


-- UPDATE
UPDATE useraja SET phone='08123123123', addres= 'padang' WHERE id=2;

-- DELETE
DELETE FROM nama_table WHERE id=1;

-- SEARCH
SELECT * FROM name_table where full_name like '%ab%';

-- SORT
SELECT * FROM name_table ORDER BY full_name ASC;