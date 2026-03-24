-- insert 20 customers --

insert into customers_table (first_name, last_name, email, phone, city) values
('fola', 'banjoko', 'folabanjoko@gmail.com', '903844778', 'lagos'),
('titi', 'paul', 'titipaul@gmail.com', '09036447484', 'benin'),
('baba', 'smith', 'bobsmith@gmail.com', '08133377744', 'lagos'),
('dada', 'jejelaiye', 'dada@gmail.com', '07011100034', 'lagos'),
('amaka', 'aguforo', 'amarachi@gmail.com', '08136734466', 'abuja'),
('prince', 'charlse', 'prince@gmail.com', '70785386291', 'lagos'),
('martins', 'kehinde', 'kehinde@gmail.com', '09045327210', 'jos'),
('yusuf', 'bola', 'bolayusuf@gmail.com', '0807890076', 'portharcourt'),
('yamal', 'lamine', 'yamali@gmail.com', '09056363744', 'lagos'),
('jeje', 'okocha', 'jokocha@gmail.com', '0812334553', 'lagos'),
('zara', 'maca', 'macazara@gmail.com', '0706665554', 'delta'),
('chane', 'peter', 'chanelpeter@gmail.com', '0817765543', 'lagos'),
('dior', 'gaga', 'gaga@gmail.com', '07087454630', 'abuja'),
('yaya', 'bello', 'yaya@yahoo.com', '08125321876', 'lagos'),
('bola', 'ahmaed', 'tinubu@gmail.com', '0703657485', 'lagos'),
('bukola', 'saraki', 'saraki2gmail.com', '0908767884', 'abuja'),
('palmers', 'combs', 'combs@gmail.com', '0709887665', 'lagos'),
('christy', 'hanna', 'hanna@gmail.com', '07034278528', 'abia'),
('drogba', 'mann', 'drogba@gmail.com', '09087656705', 'lagos'),
('maurice', 'moore', 'moore@yahoo.com', '09036797935', 'lagos');

select * from customers_table;

-- insert 10 suppliers --
insert into suppliers_table (supplier_id, supplier_name, contact_email) values
('001', 'ebuka', 'raven@gmail.com'),
('002', 'oma', 'express@gmail.com'),
('003', 'ammy', 'star@gmail.com'),
('004', 'oge', 'cheap@gmail.com'),
('005', 'tonia', 'orange@gmail.com'),
('006', 'oluchi', 'ugochukwu@gmail.com'),
('007', 'ifeoma', 'egemba@gmail.com'),
('008', 'nathan', 'onye@gmail.com'),
('009', 'opeyemmi', 'yemmi@gmail.com'),
('010', 'kemi', 'sikiru@gmail.com');

select * from suppliers_table;

-- insert 30 product --
INSERT INTO products (product_id, product_name, category, price, supplier_id) VALUES 
(1,'MacBook Pro', 'Electronics', 1200.00, 1),
(2,'Dell XPS 15', 'Electronics', 1100.00, 1),
(3,'USB-C Hub', 'Accessories', 30.00, 1),
(4,'iPhone 15', 'Electronics', 999.00, 2),
(5,'Samsung S23', 'Electronics', 850.00, 2),
(6,'iPad Air', 'Electronics', 599.00, 2),
(7,'Logitech Mouse', 'Accessories', 25.00, 3),
(8,'Mechanical Keyboard', 'Accessories', 75.00, 3),
(9,'Gaming Headset', 'Accessories', 80.00, 3),
(10,'Office Chair', 'Furniture', 150.00, 4),
(11,'Standing Desk', 'Furniture', 300.00, 4),
(12,'Filing Cabinet', 'Furniture', 120.00, 4),
(13,'Sony Headphones', 'Electronics', 200.00, 5),
(14,'Bose Speaker', 'Electronics', 150.00, 5),
(15,'Smart Watch', 'Electronics', 250.00, 5),
(16,'Coffee Mug', 'Kitchen', 10.00, 6),
(17,'Electric Kettle', 'Kitchen', 40.00, 6),
(18,'Toaster', 'Kitchen', 30.00, 6),
(19,'Yoga Mat', 'Fitness', 20.00, 7),
(20,'Dumbbell Set', 'Fitness', 50.00, 7),
(21,'Jump Rope', 'Fitness', 10.00, 7),
(22,'Water Bottle', 'Fitness', 15.00, 8),
(23,'Backpack', 'Travel', 60.00, 8),
(24,'Travel Pillow', 'Travel', 20.00, 8),
(25,'Notebook', 'Stationery', 5.00, 9),
(26,'Gel Pens (12pk)', 'Stationery', 12.00, 9),
(27,'Stapler', 'Stationery', 8.00, 9),
(28,'Desk Lamp', 'Furniture', 35.00, 10),
(29,'Monitor Stand', 'Accessories', 45.00, 10),
(30,'Wall Clock', 'Furniture', 25.00, 10);

select * from products;

-- insert 40 orders --
INSERT INTO orders (customer_id, order_date) VALUES 
(1,'2024-01-01'),(2,'2024-01-02'),(3,'2024-01-03'),(4,'2024-01-04'),(5,'2024-01-05'),
(6,'2024-01-06'),(7,'2024-01-07'),(8,'2024-01-08'),(9,'2024-01-09'),(10,'2024-01-10'),
(11,'2024-01-11'),(12,'2024-01-12'),(13,'2024-01-13'),(14,'2024-01-14'),(15,'2024-01-15'),
(16,'2024-01-16'),(17,'2024-01-17'),(18,'2024-01-18'),(19,'2024-01-19'),(20,'2024-01-20'),
(1,'2024-01-21'),(2,'2024-01-22'),(3,'2024-01-23'),(4,'2024-01-24'),(5,'2024-01-25'),
(6,'2024-01-26'),(7,'2024-01-27'),(8,'2024-01-28'),(9,'2024-01-29'),(10,'2024-01-30'),
(11,'2024-02-01'),(12,'2024-02-02'),(13,'2024-02-03'),(14,'2024-02-04'),(15,'2024-02-05'),
(16,'2024-02-06'),(17,'2024-02-07'),(18,'2024-02-08'),(19,'2024-02-09'),(20,'2024-02-10');

select * from orders;

-- insert 60 order_details --
INSERT INTO order_details (order_detail_id, order_id, product_id, quantity)
VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 4),
(4, 4, 4, 1),
(5, 5, 5, 2),
(6, 6, 6, 3),
(7, 7, 7, 1),
(8, 8, 8, 2),
(9, 9, 9, 1),
(10, 10, 10, 5),
(11, 11, 11, 2),
(12, 12, 12, 3),
(13, 13, 13, 1),
(14, 14, 14, 4),
(15, 15, 15, 2),
(16, 16, 16, 1),
(17, 17, 17, 3),
(18, 18, 18, 2),
(19, 19, 19, 1),
(20, 20, 20, 2),
(21, 21, 21, 3),
(22, 22, 22, 1),
(23, 23, 23, 2),
(24, 24, 24, 1),
(25, 25, 25, 4),
(26, 26, 26, 2),
(27, 27, 27, 3),
(28, 28, 28, 1),
(29, 29, 29, 2),
(30, 30, 30, 1),
(31, 31, 1, 2),
(32, 32, 2, 1),
(33, 33, 3, 2),
(34, 34, 4, 1),
(35, 35, 5, 3),
(36, 36, 6, 2),
(37, 37, 7, 1),
(38, 38, 8, 4),
(39, 39, 9, 2),
(40, 40, 10, 1),
(41, 1, 11, 2),
(42, 2, 12, 3),
(43, 3, 13, 1),
(44, 4, 14, 2),
(45, 5, 15, 1),
(46, 6, 16, 4),
(47, 7, 17, 2),
(48, 8, 18, 1),
(49, 9, 19, 3),
(50, 10, 20, 2),
(51, 11, 21, 1),
(52, 12, 22, 2),
(53, 13, 23, 1),
(54, 14, 24, 3),
(55, 15, 25, 2),
(56, 16, 26, 1),
(57, 17, 27, 2),
(58, 18, 28, 1),
(59, 19, 29, 3),
(60, 20, 30, 2);

select * from order_details;


