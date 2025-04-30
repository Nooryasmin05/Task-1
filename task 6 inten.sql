CREATE TABLE customersales(customer_id INT PRIMARY KEY,customer_fname VARCHAR(20),customer_lname VARCHAR(20),customer_gender varCHAR(20),
customer_email VARCHAR(50),customer_dateJoined DATE,address_id INT);

INSERT INTO customersales (customer_id,customer_fname, customer_lname,customer_gender, customer_email, customer_dateJoined,address_id) VALUES
(1001,'John', 'Doe','Male','john.doe@example.com', '2020-01-15', 1471),
(1002,'Jane', 'Smith','Male', 'jane.smith@example.com', '2021-03-22', 1472),
(1003,'Emily', 'Johnson','Female', 'emily.johnson@example.com', '2019-07-30',1473),
(1004,'Michael', 'Brown', 'Male','michael.brown@example.com', '2022-05-14', 1474),
(1005,'Sarah', 'Davis','Female','sarah.davis@example.com', '2020-09-10', 1475),
(1006,'David', 'Martinez','Male', 'david.martinez@example.com', '2018-11-05', 1476),
(1007,'Laura', 'Wilson','Female', 'laura.wilson@example.com', '2021-08-19', 1477),
(1008,'James', 'Taylor','Male','james.taylor@example.com', '2023-01-12', 1478),
(1009,'Sophia', 'Anderson','Female','sophia.anderson@example.com', '2019-04-25', 1479),
(1010,'Daniel', 'Thomas','Female','daniel.thomas@example.com', '2022-12-01',1480);
alter table customersales add order_id int , order_date date , order_amount int
UPDATE customersales SET order_id = 1, order_date = '2023-01-10', order_amount = 150 WHERE customer_id = 1001;
UPDATE customersales SET order_id = 2, order_date = '2023-01-15', order_amount = 200 WHERE customer_id = 1002;
UPDATE customersales SET order_id = 3, order_date = '2023-02-20', order_amount = 300 WHERE customer_id = 1003;
UPDATE customersales SET order_id = 4, order_date = '2023-03-05', order_amount = 180 WHERE customer_id = 1004;
UPDATE customersales SET order_id = 5, order_date = '2023-03-25', order_amount = 250 WHERE customer_id = 1005;
UPDATE customersales SET order_id = 6, order_date = '2023-03-30', order_amount = 120 WHERE customer_id = 1006;
UPDATE customersales SET order_id = 7, order_date = '2023-04-15', order_amount = 400 WHERE customer_id = 1007;
UPDATE customersales SET order_id = 8, order_date = '2023-04-20', order_amount = 130 WHERE customer_id = 1008;
UPDATE customersales SET order_id = 9, order_date = '2023-05-05', order_amount = 500 WHERE customer_id = 1009;
UPDATE customersales SET order_id = 10, order_date = '2023-06-01', order_amount= 220 WHERE customer_id = 1010;

	SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(order_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_volume
FROM 
    customersales
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    year, month;

select * from customersales 
select customer_fname,customer_lname,customer_dateJoined ,rank () over(order by customer_dateJoined) as rank_no from customersales


