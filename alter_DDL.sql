-- ADD FIELD
ALTER TABLE users ADD COLUMN jenis_kelamin VARCHAR(10);

-- RENAME FIELD
ALTER TABLE users RENAME COLUMN jenis_kelamin TO jk;

ALTER TABLE users CHANGE COLUMN jenis_kelamin jk VARCHAR(10);


-- modify
ALTER TABLE users MODIFY jk INT;

-- HAPUS
ALTER TABLE users DROP COLUMN jk;