-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 28, 2024 lúc 12:11 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `type` enum('Admin','Staff') NOT NULL DEFAULT 'Staff',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `address`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Kien', 'trungkienk3223@gmail.com', NULL, 'trungkien', '1234', '0846010805', '', 'Active', 'Admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LG', 'lg', 'Active', NULL, NULL),
(2, 'SAMSUNG', 'samsung', 'Active', NULL, NULL),
(3, 'APPLE', 'apple', 'Active', NULL, NULL),
(4, 'No brands', 'no-brands', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Máy tính', 'may-tinh', 'Active', NULL, NULL),
(2, 'Điện thoại', 'dien-thoai', 'Active', NULL, NULL),
(3, 'Máy tính bảng', 'may-tinh-bang', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `sumary` text NOT NULL,
  `description` text NOT NULL,
  `newscategory_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `avatar`, `slug`, `sumary`, `description`, `newscategory_id`, `created_at`, `updated_at`) VALUES
(19, 'Iphone 15 mới ra mắt', 'uploads/67483fbbe95d5Screenshot 2024-11-28 at 16.57.38.png', 'iphone-15-m-i-ra-m-t', 'iPhone 15 Pro Max được Apple ra mắt với thiết kế khung titan nhẹ và bền, cùng chip xử lý A17 Pro mạnh mẽ, đánh dấu bước tiến vượt bậc về công nghệ. Sản phẩm có màn hình viền siêu mỏng, kích thước 6.7 inch, công nghệ Super Retina XDR OLED, hỗ trợ tần số quét 120Hz và độ sáng lên tới 2.000 nits. Một điểm nổi bật khác là nút Action mới, giúp tùy chỉnh linh hoạt hơn.\r\n\r\niPhone 15 Pro Max cũng cải thiện camera với khả năng zoom quang học lên tới 5x, mang đến trải nghiệm chụp ảnh tối ưu. Thiết bị này sử dụng cổng USB-C, thay thế Lightning, tăng tính tiện lợi. Giá khởi điểm từ 1.199 USD (khoảng 28,9 triệu đồng tại Việt Nam)​\r\n', 'Apple đã ra mắt dòng iPhone 15, với những cải tiến lớn trong thiết kế và công nghệ:\r\n\r\nThiết kế: iPhone 15 Pro và Pro Max sử dụng chất liệu titan cao cấp, giúp giảm trọng lượng so với thế hệ trước, đồng thời có viền mỏng hơn và các cạnh cong mềm mại. Tất cả các mẫu đều được trang bị cổng USB-C, thay thế cổng Lightning truyền thống, mang lại sự tương thích tốt hơn với các thiết bị khác.\r\nHiệu năng: iPhone 15 Pro được trang bị chip A17 Pro, mạnh mẽ hơn và tiết kiệm năng lượng, hỗ trợ chơi game đỉnh cao và xử lý đồ họa phức tạp. Công nghệ truyền dữ liệu USB 3 cho phép tốc độ truyền lên đến 10 Gbps, nhanh hơn gấp 20 lần so với trước.\r\nCamera: Mẫu Pro Max sở hữu camera telephoto 5x với cảm biến lớn hơn, trong khi camera chính 48MP hỗ trợ chế độ mặc định 24MP siêu nét. Các tính năng như Night Mode và Smart HDR được cải thiện, hỗ trợ quay video ProRes trực tiếp vào ổ cứng ngoài, phục vụ chuyên nghiệp cho nhiếp ảnh gia và nhà làm phim.\r\nKết nối: Hỗ trợ Wi-Fi 6E, chip Ultra Wideband thế hệ 2 tăng gấp ba lần khoảng cách kết nối giữa các thiết bị iPhone, cùng khả năng Precision Finding trong ứng dụng Find My.\r\nPhần mềm: Cả dòng đều chạy iOS 17, mang lại các tính năng cá nhân hóa và nâng cao trải nghiệm người dùng.\r\nTuy nhiên, iPhone 15 Pro gặp một số báo cáo về vấn đề quá nhiệt, mà Apple hứa sẽ khắc phục qua các bản cập nhật phần mềm sắp tới​\r\n', 4, '2024-11-28 17:02:35', '2024-11-28 17:02:35'),
(20, 'Giảm Giá Sốc Cuối Năm', 'uploads/67484d66e38f8sale.png', 'gi-m-gi-s-c-cu-i-n-m', 'Cuối năm 2024, nhiều chương trình giảm giá sốc đang diễn ra, đặc biệt tập trung vào sự kiện Black Friday', 'Black Friday 2024 (29/11/2024)\r\nCông nghệ: Nhiều thương hiệu nổi bật như Apple, Oppo, và Rapoo đang giảm giá sâu. Ví dụ:\r\nApple: Sản phẩm như tai nghe, bút cảm ứng, laptop, và điện thoại giảm giá tới 40%.\r\nRapoo: Phụ kiện như chuột và webcam giảm tới 65%.\r\nOppo: Các mẫu điện thoại và tai nghe giảm 15%-45%.\r\nCách săn deal: Người tiêu dùng nên theo dõi các kênh bán hàng, so sánh giá và chuẩn bị trước danh sách sản phẩm cần mua để tận dụng tối đa các ưu đãi', 11, '2024-11-28 18:00:54', '2024-11-28 18:00:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscategories`
--

CREATE TABLE `newscategories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `status` enum('Active','Innactive') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `newscategories`
--

INSERT INTO `newscategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đồ công nghệ', '-c-ng-ngh-', 'Active', NULL, NULL),
(11, 'giảm giá', 'gi-m-gi-', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('Processing','Confirmed','Shipping','Delivered','Cancelled') NOT NULL DEFAULT 'Processing',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `firstname`, `lastname`, `address`, `phone`, `email`, `status`, `created_at`, `updated_at`) VALUES
(4, 0, 'Bui Cong', 'Thanh', '99 Hung Vuong', '09090909', 'congthanhbkit03@gmail.com', 'Cancelled', '2023-11-12 15:11:30', '2023-11-12 15:11:30'),
(5, 0, '666', '666', '6666', '6666', '6666', 'Cancelled', '2023-11-12 15:12:27', '2023-11-12 15:12:27'),
(6, 0, '8888', '8888', '88888', '888888', '88888888888', 'Processing', '2023-11-12 15:13:05', '2023-11-12 15:13:05'),
(7, 0, 'Cong Thanh', 'Bui', '77777', '777777777', '7777777777', 'Delivered', '2023-11-12 15:15:00', '2023-11-12 15:15:00'),
(8, 0, '555', '555', '5555', '555', '55555@gmail.com', 'Delivered', '2023-11-14 10:55:17', '2023-11-14 10:55:17'),
(9, 0, 'Nguyễn Trung', 'Kiên', 'ádjaksdjkasj', '0846010805', 'trungkienk3223@gmail.com', 'Processing', '2024-11-26 16:17:56', '2024-11-26 16:17:56'),
(10, 0, 'A', 'A', 'A', 'A', 'A', 'Processing', '2024-11-27 01:10:13', '2024-11-27 01:10:13'),
(11, 0, 'Nguyễn Trung ', 'Kiên', 'abc', '0846010805', 'trungkienk1818@gmail.com', 'Processing', '2024-11-28 11:05:49', '2024-11-28 11:05:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `qty` tinyint(4) NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(6, 11, 45, 25000000, 1, 25000000, '2024-11-28 11:05:49', '2024-11-28 11:05:49'),
(7, 11, 43, 20000000, 1, 20000000, '2024-11-28 11:05:49', '2024-11-28 11:05:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `summary` text NOT NULL,
  `stock` tinyint(3) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `disscounted_price` double NOT NULL,
  `images` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `summary`, `stock`, `price`, `disscounted_price`, `images`, `category_id`, `brand_id`, `status`, `created_at`, `updated_at`) VALUES
(43, 'Iphone 15 PRM', 'iphone-15-prm', '                        Apple đã ra mắt dòng iPhone 15, với những cải tiến lớn trong thiết kế và công nghệ:\r\n\r\nThiết kế: iPhone 15 Pro và Pro Max sử dụng chất liệu titan cao cấp, giúp giảm trọng lượng so với thế hệ trước, đồng thời có viền mỏng hơn và các cạnh cong mềm mại. Tất cả các mẫu đều được trang bị cổng USB-C, thay thế cổng Lightning truyền thống, mang lại sự tương thích tốt hơn với các thiết bị khác.\r\nHiệu năng: iPhone 15 Pro được trang bị chip A17 Pro, mạnh mẽ hơn và tiết kiệm năng lượng, hỗ trợ chơi game đỉnh cao và xử lý đồ họa phức tạp. Công nghệ truyền dữ liệu USB 3 cho phép tốc độ truyền lên đến 10 Gbps, nhanh hơn gấp 20 lần so với trước.\r\nCamera: Mẫu Pro Max sở hữu camera telephoto 5x với cảm biến lớn hơn, trong khi camera chính 48MP hỗ trợ chế độ mặc định 24MP siêu nét. Các tính năng như Night Mode và Smart HDR được cải thiện, hỗ trợ quay video ProRes trực tiếp vào ổ cứng ngoài, phục vụ chuyên nghiệp cho nhiếp ảnh gia và nhà làm phim.\r\nKết nối: Hỗ trợ Wi-Fi 6E, chip Ultra Wideband thế hệ 2 tăng gấp ba lần khoảng cách kết nối giữa các thiết bị iPhone, cùng khả năng Precision Finding trong ứng dụng Find My.\r\nPhần mềm: Cả dòng đều chạy iOS 17, mang lại các tính năng cá nhân hóa và nâng cao trải nghiệm người dùng.\r\nTuy nhiên, iPhone 15 Pro gặp một số báo cáo về vấn đề quá nhiệt, mà Apple hứa sẽ khắc phục qua các bản cập nhật phần mềm sắp tới​\r\n                        ', '                        iPhone 15 Pro Max được Apple ra mắt với thiết kế khung titan nhẹ và bền, cùng chip xử lý A17 Pro mạnh mẽ, đánh dấu bước tiến vượt bậc về công nghệ. Sản phẩm có màn hình viền siêu mỏng, kích thước 6.7 inch, công nghệ Super Retina XDR OLED, hỗ trợ tần số quét 120Hz và độ sáng lên tới 2.000 nits. Một điểm nổi bật khác là nút Action mới, giúp tùy chỉnh linh hoạt hơn.\r\n\r\niPhone 15 Pro Max cũng cải thiện camera với khả năng zoom quang học lên tới 5x, mang đến trải nghiệm chụp ảnh tối ưu. Thiết bị này sử dụng cổng USB-C, thay thế Lightning, tăng tính tiện lợi. Giá khởi điểm từ 1.199 USD (khoảng 28,9 triệu đồng tại Việt Nam)​\r\n                        ', 20, 40000000, 20000000, 'uploads/67484aec61829IP15.jpg', 2, 3, 'Active', NULL, NULL),
(45, 'Macbook Pro M1', 'macbook-pro-m1', 'Tính năng nổi bật:\r\nHiệu suất mạnh mẽ: Chip M1 Pro với CPU tối đa 10 lõi và GPU tối đa 16 lõi, cho khả năng xử lý nhanh gấp nhiều lần so với các thế hệ chip trước.\r\nMàn hình Retina XDR: Kích thước 14 hoặc 16 inch, hỗ trợ công nghệ Liquid Retina XDR với độ sáng tối đa 1.600 nits, màu sắc chuẩn xác, lý tưởng cho đồ họa và chỉnh sửa video.\r\nThời lượng pin ấn tượng: Có thể sử dụng lên đến 17 giờ (phiên bản 14 inch) hoặc 21 giờ (phiên bản 16 inch).\r\nThiết kế hiện đại: Mỏng nhẹ nhưng chắc chắn, bổ sung nhiều cổng kết nối như HDMI, khe thẻ SD, và MagSafe 3.\r\nHệ thống âm thanh cao cấp: Hỗ trợ âm thanh vòm Spatial Audio với dàn loa 6 chiếc, tăng cường trải nghiệm giải trí.\r\nTối ưu hóa macOS Monterey: Hoạt động mượt mà trên hệ điều hành mới, hỗ trợ tối đa khả năng đa nhiệm.', 'MacBook Pro M1 Pro là một trong những phiên bản laptop cao cấp của Apple, ra mắt với chip M1 Pro mạnh mẽ, mang lại hiệu suất vượt trội cho cả nhu cầu sáng tạo lẫn công việc chuyên nghiệp.', 10, 50000000, 25000000, 'uploads/67484c0ce824cMAC01.png;uploads/67484c0ce8918MACBOOK.png', 1, 3, 'Active', NULL, NULL),
(46, 'Samsung Galaxy Tab S9 FE 5G', 'samsung-galaxy-tab-s9-fe-5g', 'Tính năng nổi bật:\r\nMàn hình sắc nét:\r\nKích thước 10.9 inch với tấm nền TFT LCD, độ phân giải cao, mang lại trải nghiệm hình ảnh sống động và rõ nét.\r\nHiệu năng ổn định:\r\nĐược trang bị vi xử lý Exynos 1380, hỗ trợ đa nhiệm mượt mà, đáp ứng tốt các nhu cầu từ làm việc đến giải trí.\r\nRAM 6GB/8GB và bộ nhớ trong 128GB/256GB, hỗ trợ thẻ nhớ mở rộng microSD.\r\nHỗ trợ kết nối 5G:\r\nMang đến tốc độ truy cập internet nhanh chóng, lý tưởng cho công việc và học tập từ xa.\r\nPin lớn, sạc nhanh:\r\nDung lượng pin 8.000mAh, hỗ trợ sạc nhanh 45W, đảm bảo thời gian sử dụng lâu dài mà không bị gián đoạn.\r\nChống nước, chống bụi:\r\nTiêu chuẩn IP68, tăng cường độ bền và khả năng sử dụng trong nhiều môi trường khác nhau.\r\nHỗ trợ S Pen:\r\nĐi kèm bút S Pen, giúp nâng cao hiệu quả công việc, học tập và sáng tạo nội dung.', 'Samsung Galaxy Tab S9 FE 5G là mẫu máy tính bảng nằm trong dòng Galaxy Tab S9 của Samsung, mang đến sự kết hợp giữa hiệu năng và tính năng vượt trội trong phân khúc giá phải chăng.', 10, 30000000, 15600000, 'uploads/67484caf5cb04ss01.png;uploads/67484caf5cea6SSipad.png', 3, 2, 'Active', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newscategories`
--
ALTER TABLE `newscategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `newscategories`
--
ALTER TABLE `newscategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
