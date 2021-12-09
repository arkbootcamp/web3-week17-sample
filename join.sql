-- CREATE TABLE CATEGORY
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

-- ADD FOREIGN KEY
-- TANPA BEHAVIOR 
ALTER TABLE products ADD FOFEIGN KEY (id_category) REFERENCES categories (id);

-- PAKAI BEHAVIOR

-- RESTRICT 
---> UPDATE -> TIDAK BERHASIL / DITOLAK (DEFAULT)
---> DELETE -> TIDAK BERHASIL / DITOLAK (DEFAULT)

-- CASCADE
---> UPDATE -> DATA YG ADA REFERENSI AKAN IKUT TER UPDATE
---> DELETE -> DATA YG ADA REFERENSI AKU IKUT TER HAPUS

-- NO ACTION
---> UPDATE -> TIDAK TERJADI SESUATU
---> DELETE -> TIDAK TERJADI SESUATU

-- SET NULL
---> UPDATE -> DATA YG ADA REFERENSI UBAH MENJADI NULL
---> DELETE -> DATA YG ADA REFERENSI UBAH MENJADI NULL

ALTER TABLE products ADD FOREIGN KEY(id_category) REFERENCES categories(id) ON UPDATE CASCADE ON DELETE CASCADE;

-- BUAT TABLE LANGSUNG DIKASIH FOREIGN KEY
CREATE TABLE products10 (
  id int,
  name VARCHAR(64) NOT NULL,
  description TEXT,
  price INT NOT NULL DEFAULT 0,
  id_category INT,
  quantity INT NOT NULL DEFAULT 0,
  PRIMARY KEY (id),
  FOREIGN KEY (id_category) REFERENCES categories (id)
  );
