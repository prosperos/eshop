-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2018 at 09:55 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2_loc`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', '', ''),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'ASICS', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', 'сумки ключевики...', 'сумки описание...'),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(16, 'Products/Product1/2b2b68.jpg', 1, 0, 'Product', '13feab8b0a-3', ''),
(17, 'Products/Product1/3c409a.jpg', 1, 0, 'Product', '19a2271819-2', ''),
(18, 'Products/Product13/e998f1.jpg', 13, 0, 'Product', '081d154340-3', ''),
(19, 'Products/Product13/428522.jpg', 13, 0, 'Product', 'b040c20c92-4', ''),
(20, 'Products/Product13/bc893b.jpg', 13, 0, 'Product', '377f9c1f6b-5', ''),
(21, 'Products/Product13/d57653.jpg', 13, 0, 'Product', '21d3fc191c-6', ''),
(22, 'Products/Product13/c7bb55.jpg', 13, 0, 'Product', '7823e1c0dd-7', ''),
(23, 'Products/Product13/4bca51.jpg', 13, 0, 'Product', '4516c80eed-2', ''),
(24, 'Products/Product13/8d8e53.jpg', 13, 1, 'Product', '6f03a922d6-1', ''),
(25, 'Products/Product13/8d7375.jpg', 13, NULL, 'Product', '1290e2ba67-8', ''),
(26, 'Products/Product13/ce0477.jpg', 13, NULL, 'Product', 'abd87b97f7-9', ''),
(27, 'Products/Product1/2e77d9.jpg', 1, 1, 'Product', '14349ba170-1', ''),
(28, 'Products/Product2/9f86f4.jpg', 2, 1, 'Product', '23cb38428b-1', ''),
(29, 'Products/Product2/321652.jpg', 2, NULL, 'Product', '44b999ffcd-2', ''),
(30, 'Products/Product2/cf5d94.jpg', 2, NULL, 'Product', 'a7759e2a88-3', ''),
(31, 'Products/Product2/bf3e6a.jpg', 2, NULL, 'Product', '073b404172-4', ''),
(32, 'Products/Product2/9ed0e5.jpg', 2, NULL, 'Product', 'af3b428ba0-5', '');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1514641860),
('m140622_111540_create_image_table', 1514641865),
('m140622_111545_add_name_to_image_table', 1514641865);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(6, '2017-12-26 11:46:11', '2017-12-26 11:46:11', 1, 100, '0', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(7, '2017-12-26 11:47:58', '2017-12-26 11:47:58', 1, 100, '0', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(8, '2017-12-26 11:48:01', '2017-12-26 11:48:01', 1, 100, '0', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(9, '2017-12-26 11:48:27', '2017-12-26 11:48:27', 1, 100, '0', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(10, '2017-12-26 11:49:00', '2017-12-26 11:49:00', 1, 100, '0', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(11, '2017-12-26 12:05:05', '2017-12-26 12:05:05', 1, 100, '0', 'Віталій', 'vitalikua@list.ru', '+380932493779', 'Кульпарківська 83 а'),
(12, '2017-12-28 20:03:07', '2017-12-28 20:03:07', 1, 56, '1', 'Віталій', 'blazhivsky12@gmail.com', '+380932493779', 'Кульпарківська 83 а'),
(13, '2017-12-29 19:07:45', '2017-12-29 19:07:45', 1, 56, '0', 'rrrr', 'blazhivsky12@gmail.com', '+380932493779', 'central222'),
(14, '2017-12-29 19:08:08', '2017-12-29 19:08:08', 1, 56, '0', 'rrrr', 'blazhivsky12@gmail.com', '+380932493779', 'central222'),
(15, '2018-01-02 15:52:52', '2018-01-02 15:52:52', 2, 56, '0', 'Vitale', 'blazhivsky12@gmail.com', '+380932493779', 'central');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 4, 3, 'Блуза Mango 53005681-05 M Бежевая', 20, 2, 40),
(2, 4, 7, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', 0, 1, 0),
(3, 5, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(4, 6, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(5, 7, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(6, 8, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(7, 9, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(8, 10, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(9, 11, 6, 'Кардиган Levi\'s Icy Grey Heather M', 100, 1, 100),
(10, 12, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(11, 13, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(12, 14, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(13, 15, 2, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', 56, 1, 56),
(14, 15, 5, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Джинсы Garcia 244/32/856 28-32 р Серо-синие', '<p><strong><img alt=\"\" src=\"/web/upload/global/some/sub/path/Vitalik-(small)2.jpg\" style=\"float:right; height:273px; width:300px\" />Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</strong></p>\r\n\r\n<p style=\"text-align:center\">Header</p>\r\n\r\n<p><strong>Великолепные джинсы винтажно-голубого цвета. Настоящая находка для любителей качественного денима. Особенности: Зауженные к низу Пять карманов Высококачественный деним Высокая посадка (high fit) Выгодно подчеркивают фигуру</strong></p>\r\n', 101, '', '', 'product1.jpg', '1', '1', '0'),
(2, 4, 'Джинсы MR520 MR 227 20002 0115 29-34 р Синие', '<p>MR520 &ndash; амбициозный восточноевропейский бренд, который предлагает качественную и стильную одежду, сделанную специально для молодых людей, следящих за своим внешним видом. Женские джинсы фасона boyfriend fit (в переводе с англ. &ndash; &quot;джинсы моего парня&quot;). Модель с зауженными штанинами. Застегивается на пуговицы. Изделие с низкой посадкой. Джинсы дополнены прорезными карманами спереди и накладными карманами сзади. Изделие декорировано эффектом потертости, вареным эффектом и необычными швами.</p>\r\n', 56, '', '', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango 53005681-05 M Бежевая', 'Испанский бренд модной одежды \"Mango\" родился в 1984 году в Барселоне, где и по сей день находится штаб-квартира компании. В том же городе появился и первый магазин — на улице Пасео де Грасия (Paseo de Gracia). Компания, основанная братьями Исааком и Нахманом Андиком (Isaac & Nahman Andic), очень быстро набрала популярность — всего лишь годом позднее был открыт магазин в другом городе, на этот раз в Валенсии. Одежда \"Mango\" отличается высоким качеством, приемлемой ценой, современным дизайном и неповторимым стилем.', 20, NULL, NULL, 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor TT 20312490071 7610 M Зелёная', '\r\n\r\nTom Tailor Group — один из ведущих и быстро развивающихся Fashion холдингов германии и европы, продукция которого ориентирована на целевую аудиторию в возрасте от 0 до 60 лет.\r\n\r\nTom Tailor известен на рынке текстиля с 1962 года и до сих пор сохраняет стандарты немецкого качества. Tom Tailor предлагает повседневную одежду и аксессуары высокого качества для женщин, мужчин и детей.\r\n\r\nОдежда от Tom Tailor поможет создать активный повседневный образ с нотками элегантности.', 70, NULL, NULL, 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina 17-16-17453-SM-29 S', NULL, 0, NULL, NULL, 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather M', '', 100, '', '', 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON 15102048 M Black Tan/Partridg', '\r\n\r\nCasual марка молодежной женской одежды ONLY является частью датской компании Bestseller AS. Изначально Bestseller занимался производством детской одежды, а в 1995 году появилась на свет марка ONLY. Популярность этой марки возрастала быстрыми темпами и теперь ONLY владеет 770 магазинами в более чем 40 странах мира.\r\n\r\nONLY — бренд стильной молодежной одежды. Это бренд для тех, кто любит добиваться успеха и быть не таким, как все. Демократичные цены, модные модели, экологически чистые ткани делают одежду от ONLY сверхпопулярной.', 0, NULL, NULL, 'no-image.png', '1', '1', '0'),
(8, 26, 'Брюки SK House 2211-1972кор L Коричневые', '\r\n\r\nКомпания SK House — это украинский производитель модной женской одежды с безупречной репутацией и тысячами поклонников по всему СНГ. SK House изготавливает качественный и долговечный товар, созданный из высококачественных тканей. Компания использует современные методы пошива и, изучая текущие мировые тенденции и локальные требования покупателей, создает модели, которые не задерживаются на полках длительное время и быстро раскупаются во всех странах.', 99, NULL, NULL, 'no-image.png', '0', '0', '1'),
(9, 26, 'Брюки Kira Plastinina 17-07-17418-FL-58 L', NULL, 0, NULL, NULL, 'product1.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS13A060-3-10', 'Простота, инновационный стиль бренда, высококачественные требования к продукции, благодаря этому GUSSACI Italy пользуется высокой репутацией во многих странах Европы. Превосходное качество, отличный дизайн, соответствующие цены делают \"Гуссачи\" модным и популярным!\r\n\r\nОсобенности:\r\n\r\nКоличество основных отделений: 1. Сумка имеет прорезной карман на молнии, а также два небольших накладных кармана для хранения мобильного телефона, разных портативных гаджетов и мелочей. На лицевой стороне модели есть узкий прорезной карман на \"молнии\". На тыльной стороне модели есть прорезной карман на \"молнии\". Особенностью данной модели является возможность изменения ее формы при помощи дополнительной внешней застежки-молнии. Сумка имеет 2 ручки для переноса на локте или в руке. Их длина не регулируется и составляет 45 см, а высота от крайней точки ручки до сумки — 16 см. В комплект к изделию прилагается съемный плечевой ремень. Его длина может регулироваться при помощи металлической пряжки от 78 до 137.5 см. Сумка закрывается при помощи застежки-молнии.\r\n\r\nМатериал подкладки: плотная ткань.\r\nМатериал сумки: кожезаменитель.\r\nЦвет фурнитуры: золото.\r\nРазмеры сумки: 26 х 25 х 10.5 см', 15, NULL, NULL, 'product3.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel Нежно-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 200, NULL, NULL, 'no-image.png', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma Золотистая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 205, NULL, NULL, 'product5.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford Красная', '<p>Особенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом. Модели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.</p>\r\n', 0, '', '', 'no-image.png', '0', '0', '0'),
(14, 29, 'Сумка Michael Kors JS Travel Светло-розовая', '\r\n\r\nОсобенность стиля Michael Kors заключается в том, что простота его коллекций гармонирует с роскошью. Этому дизайнеру под силу объединить американский утилитаризм в манере одеваться с европейской изысканностью и шармом. Все его работы отличает изящная утонченность, которая рождается из строгих, почти примитивных линий. Все аксессуары поддерживают общий стиль человека с безупречным вкусом.\r\n\r\nМодели Michael Kors могут оставаться оригинальными, стильными и неотразимыми в течение многих лет, что особо важно для покупательниц, не желающих постоянно обновлять свой гардероб.', 0, NULL, NULL, 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$fOzpvr84YCQvHvX3LV5oU.SfRrSetyG2VyqrM1FcXDvc7PgFEUblq', '7cOelgV8CDGcOpFp-hUJBcSQHqvK9s0M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
