--test veritabanınızda employee isimli sütun bilgileri
--id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--Önce 'test' adında DB yarattık.
CREATE TABLE IF NOT EXISTS employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	emal VARCHAR(100)
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
(name, birthday, emal) values ('Sterling', '2022-10-08', 'sterbruggen0@virginia.edu');
--x50

--Sütunların her birine göre diğer sütunları güncelleyecek 6 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'ABCD'
WHERE id BETWEEN 1 AND 6;

--Sütunların her birine göre ilgili satırı silecek 6 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id BETWEEN 1 AND 6
RETURNING* ;
