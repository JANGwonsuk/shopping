SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(6,0) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES


DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'BTS WORLDTOUR - NEWYORK', 'NORTHAMERICA', '2022.07.16(SAT) 18:00', 'BTS WORLDTOUR - NEWYORK1.jpeg', 'BTS WORLDTOUR - NEWYORK2.jpeg', 'BTS WORLDTOUR - NEWYORK3.jpeg', 'BTS WORLDTOUR - NEWYORK4.jpeg', '150.00', 0, 'Carnegie Hall'),
(2, 'BLACK PINK WORLDTOUR - LONDON', 'EUROPE', '2022.07.16(SAT) 18:00', 'BLACK PINK WORLDTOUR - LONDON1.jpeg', 'BLACK PINK WORLDTOUR - LONDON2.jpeg', 'BLACK PINK WORLDTOUR - LONDON3.jpeg', 'BLACK PINK WORLDTOUR - LONDON4.jpeg', '200.00', 0, 'Wembley Stadium'),
(3, 'BLACK PINK WORLDTOUR - NEWYORK', 'NORTHAMERICA', '2022.07.23(SAT) 18:00', 'BLACK PINK WORLDTOUR - NEWYORK1.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK2.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK3.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK4.jpeg', '200.00', 0, 'Carnegie Hall'),
(4, 'AESPA WORLD CONCERT - ARGENTINA', 'SOUTHAMERICA', '2022.07.16(SAT) 18:00', 'AESPA WORLD CONCERT - ARGENTINA1.jpeg', 'AESPA WORLD CONCERT - ARGENTINA2.jpeg', 'AESPA WORLD CONCERT - ARGENTINA3.jpeg', 'AESPA WORLD CONCERT - ARGENTINA4.jpeg', '200.00', 0, 'Ciudad Cultural Konex'),
(5, '(G)IDLE WORLDTOUR - CHILE', 'SOUTHAMERICA', '2022.07.30(SAT) 18:00', '(G)IDLE WORLDTOUR - Chile1.jpeg', '(G)IDLE WORLDTOUR - Chile2.jpeg', '(G)IDLE WORLDTOUR - Chile3.jpeg', '(G)IDLE WORLDTOUR - Chile4.jpeg', '150.00', 0, 'Movistar Arena'),
(6, 'TWICE WORLD TOUR - BRAZIL', 'SOUTHAMERICA', '2022.07.2(SAT) 18:00', 'TWICE WORLD TOUR - Brazil1.jpeg', 'TWICE WORLD TOUR - Brazil2.jpeg', 'TWICE WORLD TOUR - Brazil3.jpeg', 'TWICE WORLD TOUR - Brazil4.jpeg', '180.00', 0, 'Allianz Parque'),
(7, 'ITZY WORLDTOUR - GERMANY', 'EUROPE', '2022.09.23(FRI) 18:00', 'ITZY WORLDTOUR - GERMANY1.jpeg', 'ITZY WORLDTOUR - GERMANY2.jpeg', 'ITZY WORLDTOUR - GERMANY3.jpeg', 'ITZY WORLDTOUR - GERMANY4.jpeg', '300.00', 0, 'Deutsche Bank Park'),
(8, 'IVE WORLD FAN MEETING - SPAIN', 'EUROPE', '2022.10.09(SUN) 16:00', 'IVE WORLD FAN MEETING - SPAIN1.jpeg', 'IVE WORLD FAN MEETING - SPAIN2.jpeg', 'IVE WORLD FAN MEETING - SPAIN3.jpeg', 'IVE WORLD FAN MEETING - SPAIN4.jpeg', '500.00', 0, 'Estadio Santiago Bernabeu'),
(9, 'DOK2 HIPHOP CONCERT - LA', 'NORTHAMERICA', '2022.07.16(SAT) 18:00', 'DOK2 HIPHOP CONCERT - LA1.jpeg', 'DOK2 HIPHOP CONCERT - LA2.jpeg', 'DOK2 HIPHOP CONCERT - LA3.jpeg', 'DOK2 HIPHOP CONCERT - LA4.jpeg', '200.00', 0, 'Walt Disney Concert Hall'),
(10, 'SUNG SI KYUNG - USA CONCERT ', 'NORTHAMERICA', '2022.08.27(SAT) 18:00', 'SUNG SI KYUNG - USA CONCERT 1.jpeg', 'SUNG SI KYUNG - USA CONCERT 2.jpeg', 'SUNG SI KYUNG - USA CONCERT 3.jpeg', 'SUNG SI KYUNG - USA CONCERT 4.jpeg', '160.00', 0, 'Copernicus Center'),
(11, 'SUPER JUNIOR WORLDTOUR - CHILE', 'SOUTHAMERICA', '2022.08.13(SAT) 18:00', 'SUPER JUNIOR WORLDTOUR - CHILE1.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE2.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE3.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE4.jpeg', '150.00', 0, 'Estadio Monumental David Arellano'),
(12, 'BTS WORLDTOUR - LONDON', 'EUROPE', '2022.07.23(SAT) 18:00', 'BTS WORLDTOUR - LONDON1.jpeg', 'BTS WORLDTOUR - LONDON2.jpeg', 'BTS WORLDTOUR - LONDON3.jpeg', 'BTS WORLDTOUR - LONDON4.jpeg', '150.00', 0, 'Wembley Stadium');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'WONSUKJANG', 'jjangga700@naver.com', '4297f44b13955235245b2497399d7a93');

ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);


ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;
