-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2023 a las 05:20:25
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `poderjudicial`
--

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_10_182839_create_products_table', 2),
(6, '2023_04_10_182844_create_products_table', 3),
(7, '2023_04_10_182845_create_products_table', 4),
(8, '2023_04_11_205032_create_shops_table', 5),
(9, '2023_04_11_232759_create_orders_table', 5),
(10, '2023_04_12_191020_create_roles_table', 6),
(11, '2023_04_12_191021_create_roles_table', 7);

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-04-12 05:20:06', '2023-04-12 05:20:06'),
(2, 1, '2023-04-12 05:22:57', '2023-04-12 05:22:57'),
(3, 2, '2023-04-13 00:56:05', '2023-04-13 00:56:05');

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `product`, `price`, `tax`, `product_imagen`, `created_at`, `updated_at`) VALUES
(2, 'Producto 1', 123.45, 5.00, '1681159409-cafe.jpg', '2023-04-11 01:43:29', '2023-04-12 23:48:34'),
(3, 'Producto 2', 45.65, 15.00, '1681159672-nutella.jpg', '2023-04-11 01:47:52', '2023-04-11 01:47:52'),
(4, 'Producto 3', 39.73, 12.00, '1681159725-jugo.jpg', '2023-04-11 01:48:45', '2023-04-11 01:48:45'),
(5, 'Producto 4', 250.00, 8.00, '1681159775-mani.jpg', '2023-04-11 01:49:35', '2023-04-11 01:49:35'),
(6, 'Producto 5', 59.35, 10.00, '1681159808-soda.jpg', '2023-04-11 01:50:08', '2023-04-11 01:50:08'),
(11, 'Producto 6', 6.36, 6.60, '1681325977-cola.jpg', '2023-04-12 23:59:37', '2023-04-12 23:59:37');

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2023-04-13 00:24:18', '2023-04-13 00:24:18'),
(2, 'Cliente', '2023-04-13 00:24:18', '2023-04-13 00:24:18');

--
-- Volcado de datos para la tabla `shops`
--

INSERT INTO `shops` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `tax`, `product_imagen`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Producto 3', 1, 39.73, 12.00, '1681159725-jugo.jpg', '2023-04-12 05:20:06', '2023-04-12 05:20:06'),
(2, 2, 3, 'Producto 2', 1, 45.65, 15.00, '1681159672-nutella.jpg', '2023-04-12 05:22:57', '2023-04-12 05:22:57'),
(3, 2, 6, 'Producto 5', 1, 59.35, 10.00, '1681159808-soda.jpg', '2023-04-12 05:22:58', '2023-04-12 05:22:58'),
(4, 3, 3, 'Producto 2', 2, 45.65, 15.00, '1681159672-nutella.jpg', '2023-04-13 00:56:05', '2023-04-13 00:56:05'),
(5, 3, 6, 'Producto 5', 4, 59.35, 10.00, '1681159808-soda.jpg', '2023-04-13 00:56:05', '2023-04-13 00:56:05');

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'juanvd.01@gmail.com', 'JVillegas', NULL, '$2y$10$KdYVtFA24XWZDFDgQsejM.fcnDDIfeu5Zi9xGyWCFGW/z38QJ6H3m', NULL, 1, '2023-04-10 21:38:45', '2023-04-10 21:38:45'),
(2, NULL, 'c_cueto@gmail.com', 'CCueto', NULL, '$2y$10$LXQrAUyjxLaXafdVkiX.4OH6kcJTZQOrpo6Rsu4Rm.9cK9Oz07B2S', NULL, 2, '2023-04-13 00:52:21', '2023-04-13 00:52:21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
