USE mydb;

CREATE TABLE IF NOT EXISTS sales (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  order_date DATE,
  count_product INT
);

INSERT INTO sales (order_date, count_product)
VALUES 
  ('2022-01-01', '156'),
  ('2022-01-02', '180'),
  ('2022-01-03', '21'),
  ('2022-01-04', '124'),
  ('2022-01-05', '341');
  
SELECT
	id AS 'id заказа',
	IF (count_product < 100, 'Маленький заказ',
		IF (count_product between 100 AND 300, 'Средний заказ',
			IF (count_product > 300, 'Большой заказ','Yt jghtltktyyj')
            )
	) AS 'Тип заказа'
FROM sales;

CREATE TABLE IF NOT EXISTS orders (
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  employee_id VARCHAR(3),
  amount DOUBLE(5,2),
  order_status VARCHAR(10)
  );
  
INSERT INTO orders (employee_id, amount, order_status)
VALUES 
	('e03', 15.00, 'OPEN'),
	('e01', 25.50, 'OPEN'),
	('e05', 100.70, 'CLOSED'),
	('e02', 22.18, 'OPEN'),
	('e04', 9.50, 'CANCELLED');
    
SELECT
	employee_id,
	amount,
	CASE order_status 
		WHEN 'OPEN' THEN 'Order is in open state'
		WHEN "CLOSED" THEN 'Order is closed'
		WHEN 'CANCELLED' THEN  'Order is cancelled'
	END AS 'full_order_status'
FROM orders;

-- 0 это число значение которое записано в ячейке, а NULL это пустая ячейка, ячейка в которой нет значения.