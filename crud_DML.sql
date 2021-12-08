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

-- pagination 
select * FROM nama_table limit 6 offset 4;


-- page 1 record ke 1 - 5
-- page 2 record ke 6 - 10
-- setiap halaman limit 5
-- page 2 -> (2 - 1) * 5 =  offset 5  limit 5
-- page 3 -> (3 - 1) * 5 = offeset 10 limit 5


CREATE TABLE categories (id INT AUTO_INCREMENT, name_category VARCHAR(64), PRIMARY KEY(id));

INSERT INTO categories (name_category)VALUES('Makanan'), ('Minuman'), ('Snack');

UPDATE products SET id_category = 2 WHERE id = 4 OR id=5 OR id =6 ;
UPDATE products SET id_category = 1 WHERE id IN (1,2,3, 7,8,9,10,11);

-- INNER JOIN
SELECT * FROM products INNER JOIN categories ON products.id_category = categories.id;

-- LEFT JOIN
SELECT * FROM products LEFT JOIN categories ON products.id_category = categories.id;

-- RIGHH JOIN
SELECT * FROM products RIGHT JOIN categories ON products.id_category = categories.id;


-- MENGHAPUS FOREIGN KEY
ALTER TABLE products DROP CONSTRAINT nama_costraint;
ALTER TABLE products DROP CONSTRAINT products_ibfk_1;
-- ATAU
ALTER TABLE products DROP FOREIGN KEY nama_costraint;
ALTER TABLE products DROP FOREIGN KEY products_ibfk_1;


