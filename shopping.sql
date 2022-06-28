관리자 ID: admin4am@naver.com
관리자 PW: p@ssw0rd
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin4am', 'admin4am@naver.com', '0f359740bd1cda994f8b55330c86d845');


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


INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'PSY SUMMER SWAG 2022 - INCHEON', 'KOREA', '2022.07.16(SAT) 18:00', 'PSY SUMMER SWAG 2022 - INCHEON1.jpeg', 'PSY SUMMER SWAG 2022 - INCHEON2.jpeg', 'PSY SUMMER SWAG 2022 - INCHEON3.jpeg', 'PSY SUMMER SWAG 2022 - INCHEON4.jpeg', '100.00', 0, 'Incheon Asiad Main Stadium'),
(2, 'WATERBOMB 2022 - THAILAND', 'ASIA', '2022.07.25(SUN) 14:00', 'WATERBOMB 2022 - THAILAND1.jpeg', 'WATERBOMB 2022 - THAILAND2.jpeg', 'WATERBOMB 2022 - THAILAND3.jpeg', 'WATERBOMB 2022 - THAILAND4.jpeg', '100.00', 0, 'IMPACT Arena Building'),
(3, 'BTS WORLDTOUR - NEWYORK', 'NORTHAMERICA', '2022.07.16(SAT) 18:00', 'BTS WORLDTOUR - NEWYORK1.jpeg', 'BTS WORLDTOUR - NEWYORK2.jpeg', 'BTS WORLDTOUR - NEWYORK3.jpeg', 'BTS WORLDTOUR - NEWYORK4.jpeg', '150.00', 0, 'Carnegie Hall'),
(4, 'BLACK PINK WORLDTOUR - LONDON', 'EUROPE', '2022.07.16(SAT) 18:00', 'BLACK PINK WORLDTOUR - LONDON1.jpeg', 'BLACK PINK WORLDTOUR - LONDON2.jpeg', 'BLACK PINK WORLDTOUR - LONDON3.jpeg', 'BLACK PINK WORLDTOUR - LONDON4.jpeg', '200.00', 0, 'Wembley Stadium'),
(5, 'SINCHON WATER GUN FESTIVAL 2022 ', 'KOREA', '2022.07.30(SAT) 13:00', '2022 SINCHON WATER GUB FESTIVAL1.jpeg', '2022 SINCHON WATER GUB FESTIVAL2.jpeg', '2022 SINCHON WATER GUB FESTIVAL3.jpeg', '2022 SINCHON WATER GUB FESTIVAL4.jpeg', '30.00', 0, 'Sinchon Station'),
(6, 'TOTTENHAM HOTSPUR VS TEAM K-LEAGUE', 'KOREA', '2022.07.13(WED) 20:00', 'TOTTENHAM HOTSPUR VS TEAM K-LEAGUE1.jpeg', 'TOTTENHAM HOTSPUR VS TEAM K-LEAGUE2.jpeg', 'TOTTENHAM HOTSPUR VS TEAM K-LEAGUE3.jpeg', 'TOTTENHAM HOTSPUR VS TEAM K-LEAGUE4.jpeg', '120.00', 0, 'Seoul World Cup Stadium'),
(7, 'BLACK PINK WORLDTOUR - NEWYORK', 'NORTHAMERICA', '2022.07.23(SAT) 18:00', 'BLACK PINK WORLDTOUR - NEWYORK1.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK2.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK3.jpeg', 'BLACK PINK WORLDTOUR - NEWYORK4.jpeg', '200.00', 0, 'Carnegie Hall'),
(8, 'BTS WORLDTOUR - LONDON', 'EUROPE', '2022.07.23(SAT) 18:00', 'BTS WORLDTOUR - LONDON1.jpeg', 'BTS WORLDTOUR - LONDON2.jpeg', 'BTS WORLDTOUR - LONDON3.jpeg', 'BTS WORLDTOUR - LONDON4.jpeg', '150.00', 0, 'Wembley Stadium'),
(9, 'AESPA WORLD CONCERT - ARGENTINA', 'SOUTHAMERICA', '2022.07.16(SAT) 18:00', 'AESPA WORLD CONCERT - ARGENTINA1.jpeg', 'AESPA WORLD CONCERT - ARGENTINA2.jpeg', 'AESPA WORLD CONCERT - ARGENTINA3.jpeg', 'AESPA WORLD CONCERT - ARGENTINA4.jpeg', '200.00', 0, 'Ciudad Cultural Konex'),
(10, '(G)IDLE WORLDTOUR - CHILE', 'SOUTHAMERICA', '2022.07.30(SAT) 18:00', '(G)IDLE WORLDTOUR - Chile1.jpeg', '(G)IDLE WORLDTOUR - Chile2.jpeg', '(G)IDLE WORLDTOUR - Chile3.jpeg', '(G)IDLE WORLDTOUR - Chile4.jpeg', '150.00', 0, 'Movistar Arena'),
(11, 'NCT WORLDTOUR - AUSTRALIA', 'OCEANIA', '2022.07.16(SAT) 18:00', 'NCT WORLDTOUR - Australia1.jpeg', 'NCT WORLDTOUR - Australia2.jpeg', 'NCT WORLDTOUR - Australia3.jpeg', 'NCT WORLDTOUR - Australia4.jpeg', '200.00', 0, 'Accor Stadium'),
(12, 'TWICE WORLD TOUR - BRAZIL', 'SOUTHAMERICA', '2022.07.2(SAT) 18:00', 'TWICE WORLD TOUR - Brazil1.jpeg', 'TWICE WORLD TOUR - Brazil2.jpeg', 'TWICE WORLD TOUR - Brazil3.jpeg', 'TWICE WORLD TOUR - Brazil4.jpeg', '180.00', 0, 'Allianz Parque'),
(13, 'HIPHOP PLAYA 2022 - SEOUL', 'KOREA', '2022.09.17(SAT) 15:00', 'HIPHOP PLAYA 20221.jpeg', 'HIPHOP PLAYA 20222.jpeg', 'HIPHOP PLAYA 20223.jpeg', 'HIPHOP PLAYA 20224.jpeg', '50.00', 0, 'Nanji Hangang Park'),
(14, 'RED VElVET WORLDTOUR - TOKYO', 'ASIA', '2022.07.30(SAT) 18:00', 'RED VElVET CONCERT - TOKYO1.jpeg', 'RED VElVET CONCERT - TOKYO2.jpeg', 'RED VElVET CONCERT - TOKYO3.jpeg', 'RED VElVET CONCERT - TOKYO4.jpeg', '200.00', 0, 'Tokyo Dome'),
(15, 'EXO WORLDTOUR - OSAKA', 'ASIA', '2022.09.13(SAT) 18:00', 'EXO WORLDTOUR - OSAKA1.jpeg', 'EXO WORLDTOUR - OSAKA2.jpeg', 'EXO WORLDTOUR - OSAKA3.jpeg', 'EXO WORLDTOUR - OSAKA4.jpeg', '220.00', 0, 'Osaka-jo Hall'),
(16, 'ITZY WORLDTOUR - GERMANY', 'EUROPE', '2022.09.23(FRI) 18:00', 'ITZY WORLDTOUR - GERMANY1.jpeg', 'ITZY WORLDTOUR - GERMANY2.jpeg', 'ITZY WORLDTOUR - GERMANY3.jpeg', 'ITZY WORLDTOUR - GERMANY4.jpeg', '300.00', 0, 'Deutsche Bank Park'),
(17, 'IVE WORLD FAN MEETING - SPAIN', 'EUROPE', '2022.10.09(SUN) 16:00', 'IVE WORLD FAN MEETING - SPAIN1.jpeg', 'IVE WORLD FAN MEETING - SPAIN2.jpeg', 'IVE WORLD FAN MEETING - SPAIN3.jpeg', 'IVE WORLD FAN MEETING - SPAIN4.jpeg', '500.00', 0, 'Estadio Santiago Bernabeu'),
(18, 'TREASURE WORLDTOUR - NEW ZEALAND', 'OCEANIA', '2022.08.06(SAT) 18:00', 'TREASURE WORLDTOUR - NEW ZEALAND1.jpeg', 'TREASURE WORLDTOUR - NEW ZEALAND2.jpeg', 'TREASURE WORLDTOUR - NEW ZEALAND3.jpeg', 'TREASURE WORLDTOUR - NEW ZEALAND4.jpeg', '110.00', 0, 'Eden Park Reimers Avenue'),
(19, 'DOK2 HIPHOP CONCERT - LA', 'NORTHAMERICA', '2022.07.16(SAT) 18:00', 'DOK2 HIPHOP CONCERT - LA1.jpeg', 'DOK2 HIPHOP CONCERT - LA2.jpeg', 'DOK2 HIPHOP CONCERT - LA3.jpeg', 'DOK2 HIPHOP CONCERT - LA4.jpeg', '200.00', 0, 'Walt Disney Concert Hall'),
(20, 'SUNG SI KYUNG - USA CONCERT ', 'NORTHAMERICA', '2022.08.27(SAT) 18:00', 'SUNG SI KYUNG - USA CONCERT 1.jpeg', 'SUNG SI KYUNG - USA CONCERT 2.jpeg', 'SUNG SI KYUNG - USA CONCERT 3.jpeg', 'SUNG SI KYUNG - USA CONCERT 4.jpeg', '160.00', 0, 'Copernicus Center'),
(21, 'SUPER JUNIOR WORLDTOUR - CHILE', 'SOUTHAMERICA', '2022.08.13(SAT) 18:00', 'SUPER JUNIOR WORLDTOUR - CHILE1.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE2.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE3.jpeg', 'SUPER JUNIOR WORLDTOUR - CHILE4.jpeg', '150.00', 0, 'Estadio Monumental David Arellano'),
(22, 'WINNER WORLDTOUR - AUSTRALIA', 'OCEANIA', '2022.08.14(SUN) 18:00', 'WINNER WORLDTOUR - Australia1.jpeg', 'WINNER WORLDTOUR - Australia2.jpeg', 'WINNER WORLDTOUR - Australia3.jpeg', 'WINNER WORLDTOUR - Australia4.jpeg', '180.00', 0, 'Optus Stadium'),
(23, 'ZICO WORLDTOUR - AUSTRALIA', 'OCEANIA', '2022.08.21(SUN) 18:00', 'ZICO WORLDTOUR - Australia1.jpeg', 'ZICO WORLDTOUR - Australia2.jpeg', 'ZICO WORLDTOUR - Australia3.jpeg', 'ZICO WORLDTOUR - Australia4.jpeg', '180.00', 0, 'Anz Stadium');

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

