-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 11:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it7744_a3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_15_003042_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `image`, `created_at`, `updated_at`) VALUES
(2, 1, 'Omnis laboriosam et reprehenderit similique nisi libero laborum.', 'Pariatur cupiditate ut pariatur accusamus aspernatur iste harum. Voluptas ipsam tempora architecto molestiae dolorem repudiandae accusamus. Soluta magni nihil tenetur similique ex consequatur dolor. Repudiandae corrupti est ducimus est illo exercitationem. Voluptatem ipsam possimus atque ut eos. Aut quisquam aut soluta. Laboriosam autem culpa quia eos officia neque iure. Dolores rerum eos aliquid. Non id cupiditate deserunt eligendi quia dolore nam nihil. Velit beatae qui in placeat at. Eos minus illum eum quis nulla. Voluptas et quis corporis fugit qui nesciunt aut. Reiciendis aperiam non ullam aspernatur.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(3, 1, 'Excepturi earum voluptatem voluptatem eaque nostrum.', 'Non temporibus accusantium laborum autem neque et veniam. Asperiores iure cum sed. Voluptas dolorum culpa inventore voluptas voluptas quisquam qui. Sit unde facere commodi minima autem. Praesentium rem adipisci eos itaque commodi quas voluptatibus. Fugit sed et assumenda. Repellat nemo velit sed beatae consectetur. Dicta consequatur eos in aut. Repudiandae qui at aut. Facere distinctio rerum eaque omnis repudiandae voluptatem. Qui non error culpa sed quia facere et. Assumenda quidem sed reprehenderit alias. Animi laudantium maiores eligendi qui aut. Ipsum dolorem ipsum corrupti voluptates quae saepe et. Nobis nostrum fuga sit voluptatem optio. Magnam ducimus odit qui sed fuga libero eos. Vel laborum nemo ut quas repudiandae qui. Aut voluptas omnis harum quia iste repellat voluptatem quidem. Cupiditate ad quaerat odit numquam et. Quo sit et qui rerum a vero. Eum ipsa sunt necessitatibus quam dolorum et numquam. Hic et est id excepturi vitae id fugiat. Rem et dolor quis. Minus eum totam cumque non. Omnis velit doloribus consequatur in consequuntur ex eligendi ea. Et nesciunt consectetur quia quas. Fugit sed explicabo quasi qui. Rem labore doloribus nisi sint eveniet natus non et.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(4, 1, 'Id sit quia totam.', 'Omnis rerum eveniet amet dignissimos. Magnam itaque facilis alias beatae ea aperiam. Sunt rerum nulla cum est perferendis cupiditate dolorem. Et animi impedit tenetur rerum nostrum. Fugit sunt eius illo eaque porro minima. Eaque asperiores quasi quia eos. Nulla quisquam sed vel alias qui exercitationem rerum. Ut iste assumenda dolor. Qui totam aliquid doloribus. Possimus sit et alias tempore unde consequatur consequatur. Eius natus et possimus qui aut qui dolores culpa. Fugit voluptatibus nisi alias minus sunt ab voluptatem. Neque omnis assumenda eligendi temporibus. Provident occaecati totam quia eos. Corrupti ipsa quae itaque cupiditate quis. Sit reprehenderit rerum inventore modi. Eum illo autem perspiciatis. Atque voluptatem ut sed voluptas est harum. Ratione enim nam aspernatur.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(5, 1, 'Odit nisi vitae sed porro illo perspiciatis sapiente.', 'Dicta placeat et vel laboriosam. Dolores rerum atque reiciendis voluptatem autem. Vel deleniti consequatur voluptas harum sunt nostrum. Voluptatem est omnis eum. Necessitatibus corporis aperiam eos eveniet et maxime quis nemo. Animi praesentium necessitatibus corporis aut dolor ea qui. Doloremque possimus rem sed ipsam. Et et fuga officiis error quia qui. Possimus ipsam et molestias aspernatur. Soluta nemo mollitia ex fugit blanditiis rerum omnis. Fugit sed animi eaque consequatur. Ab exercitationem et necessitatibus sit quia sapiente hic. Quia voluptas numquam inventore. Odio vel in eius aspernatur. Maiores fugit quidem blanditiis aut sed iure aspernatur laboriosam. Saepe veniam eos quia dolorem est. Aut inventore voluptatum quia deleniti earum et quia. Nihil sequi est ut consequatur. Similique delectus minus non non rem et aut. Eum quos nulla rerum ut. Id qui hic et voluptatem odit perspiciatis. Dolore eligendi neque error molestiae architecto. Aliquam ut blanditiis quo hic asperiores. Dolorem sint consequuntur tempore dolorum quia. Magnam eos tempore et facilis nulla omnis.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(6, 1, 'Quia repellat quibusdam cumque illo veritatis.', 'Perspiciatis qui doloribus aut eius possimus aliquid. Laudantium est hic provident natus. Deleniti saepe et sed cumque nulla consectetur. Natus fugiat ut molestiae officia. Autem dolor omnis tempora nemo molestias quis. Voluptatem quaerat in nemo ut facilis. Totam doloribus quia accusamus nisi quo. Eveniet nisi facere rerum quo. Autem dicta eveniet rerum rerum aut possimus. Minima id vero dignissimos nulla quasi vitae magni. Quos ut deleniti illo. Recusandae voluptatem et dolores natus. Vel non minima beatae aut sint. Ad atque provident velit aut quo vitae. Magni magni commodi quia nobis laudantium explicabo. Quas molestiae eum dolores assumenda sunt totam. Veritatis et nihil eius incidunt. Tempore nisi modi est corrupti repudiandae qui et. Aperiam id necessitatibus dolorum consequatur voluptates. Qui nostrum et sapiente provident autem ea. Numquam in eum inventore nihil qui. Minus in facere voluptas architecto culpa dolorem. Illum et eos nulla voluptate. Qui eum ut tempore qui. Consequatur et veniam cupiditate nesciunt. Assumenda fugiat animi velit repellendus eum voluptates quas. Quod alias sunt cumque ut. Qui quo voluptatem explicabo magni et. Soluta consectetur quos adipisci aliquam minima.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(7, 1, 'Dolores ea maxime repudiandae quam cumque.', 'Sunt inventore dolor et vel ratione voluptas aut. Molestiae numquam provident repudiandae quia odit vitae. Ut ab rem enim ex deleniti et et est. Magnam accusamus perspiciatis maiores voluptates. Omnis voluptas voluptatem id sunt dolor vero perferendis. Molestias est repellat ut quos excepturi quo enim. Tempora vitae reiciendis voluptatem non cumque ad soluta rerum. Soluta omnis harum a aut velit rerum ullam minima. Qui dolore veritatis praesentium quo soluta voluptas quod. Quia est beatae dolorem earum autem a. Voluptatibus reprehenderit sequi omnis quos officia quasi eveniet. Officia nisi est qui a. Et dolorem beatae velit modi id consequatur deserunt omnis. Voluptas nemo maiores fugiat consectetur. Explicabo ea cum similique consequuntur vitae repudiandae. Fuga veniam porro deserunt. Tenetur quo ea ipsam architecto. Reiciendis distinctio nostrum et sunt qui facere. Delectus aspernatur eligendi ipsum est consequatur. Rerum rerum aut dolores perferendis et voluptas eos. Dicta aut aut vitae quo. Incidunt eos consequatur soluta magnam beatae voluptas. Ut non ipsa quis accusamus corporis aut expedita. Porro vel est eum aut ipsam.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(8, 1, 'Eaque est optio qui at sint unde accusamus.', 'Qui dolores omnis consequatur qui sunt rerum. Cupiditate dignissimos qui est necessitatibus. Repudiandae magni quo qui adipisci deserunt consectetur ea molestias. Et non totam facilis aut quod dolorem doloremque. Neque quidem placeat fugit nobis vel deserunt non expedita. Minima laboriosam ut qui nisi fugiat. Dolores rerum porro aut. Veniam distinctio fugiat debitis est consequatur unde. Et eaque dolor incidunt rerum porro consequatur esse. Sit culpa error hic qui. Voluptas dolore vitae animi corporis laboriosam libero. Repellendus vitae consequatur est ducimus. Velit eligendi quia voluptas asperiores sit maiores maxime. Laboriosam eum quia earum rerum. Iusto tempora tempore modi vitae porro velit odio. Qui non odio doloremque explicabo. Voluptate aperiam nisi veniam facilis sit sed et provident. Eos ipsa est quasi perferendis voluptate autem. Qui fuga molestiae quod quia magnam aliquid facilis. Odio nostrum sunt reiciendis. Eos sint in ut id in quidem ut. Nihil consequatur quidem voluptates consequuntur. Et suscipit aut aliquid dolores eveniet.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(9, 1, 'Debitis et blanditiis voluptatem dolorem.', 'Atque quia sequi maiores quod in. Illum hic minus dolores excepturi nulla placeat vel. Provident aut quod vero optio quia. Minus deleniti eum fugiat numquam voluptatem facilis veritatis molestiae. Doloremque molestias incidunt a voluptas molestiae suscipit cum. Unde necessitatibus id voluptates deserunt ratione. Totam voluptatem et fugit repellat quos eveniet molestiae. Neque facilis unde qui quia et nam ipsum. Aspernatur a ut dolorem excepturi molestiae sed. Velit vel et dignissimos porro accusamus vel deleniti eaque. Ut ducimus repellat voluptas perferendis sed qui quaerat. Deserunt quisquam distinctio aut impedit. Consequatur aut explicabo enim et.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(10, 1, 'Doloribus dolores ut voluptas adipisci fuga sapiente.', 'Praesentium quod neque voluptate eum. Dolorem vitae pariatur similique vel. Quasi non maiores omnis voluptatum quis illum. Neque sed et quae sit aut. Saepe a sed quibusdam error molestias quibusdam aut. Sunt et magni ullam aut saepe et. Corporis delectus ea vel fugit. Est rem tempora unde quaerat iste. Fuga quis itaque optio. Suscipit nihil eos quasi architecto voluptas excepturi quo. Nihil necessitatibus aspernatur ex magnam aliquid. Expedita est temporibus culpa fugiat ab vel laboriosam non. Saepe qui sint sunt qui beatae. Et non modi excepturi ut error repellendus magni quia.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(11, 1, 'Iure quaerat iusto qui officia in enim.', 'Dignissimos eveniet et harum fugiat cumque. Laudantium eligendi nesciunt quis commodi iusto tempora architecto autem. Est porro rerum magni modi. Velit et velit commodi commodi unde omnis officiis a. Adipisci beatae occaecati unde dolor qui laudantium ut. Voluptatem qui quas architecto quos quo commodi eos quia. Quos sequi aspernatur quod at vel architecto. Omnis molestias et rerum porro et. Perspiciatis sequi et iure sed veniam. Esse quam vitae sunt quam. Ex magnam facere commodi tempore voluptate et. Et sit deleniti dicta aut excepturi beatae. Qui eum quos quam unde. Nisi at voluptatem nihil dolor. Placeat modi nihil occaecati mollitia. Aut deserunt ut deleniti ut. Aut sapiente dolores nesciunt et iure.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(12, 1, 'Qui aut quia et iure.', 'Qui et quisquam omnis qui. Excepturi velit fuga perspiciatis. Quae qui et consequuntur rerum. Suscipit eos et magni ut explicabo. Excepturi veritatis aut omnis eaque ipsam. Consequuntur deleniti nemo molestiae ut id omnis. Non dolor accusamus et atque velit. Accusantium molestiae ab sed aliquid ab harum quia. Consectetur dolorum officia rerum. Nam fuga magnam fugit aut rerum. Quis impedit assumenda vel ducimus. Dolor est quae consequatur. Nihil ipsam temporibus quibusdam ab dolorem numquam. Recusandae dolorem eos minima. Aut aliquam culpa autem. Laboriosam blanditiis eos corporis aperiam atque aut. Officiis corporis omnis vitae incidunt itaque dolor a. Aut aut unde qui id. Consequatur numquam ratione magni. Est est officiis ut quia eligendi pariatur fugiat qui.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(13, 1, 'Aspernatur nemo quis velit quae velit enim laudantium rem.', 'Dolor pariatur consectetur in qui necessitatibus. Reiciendis quia impedit enim. Inventore velit ea et et. Quis hic aut id laboriosam nam. Autem quasi asperiores officia soluta eos sed totam exercitationem. Dolor sed ex vel qui. Consequatur nam magni accusamus eos molestiae quibusdam et. Commodi sed dolor earum dolores non ipsam ad. Non ut repellendus perferendis nulla laudantium consequatur animi. Ipsa qui sunt placeat debitis velit. Omnis qui dolores modi enim placeat error suscipit. Ex cum ut debitis. Sunt qui asperiores et omnis voluptas sequi. Atque aut et fuga voluptatem. Fugiat omnis dolore officiis dolor. Expedita et in ab amet doloremque error sit. Qui dolorem qui facere voluptas. Omnis qui cupiditate magni ut placeat et ipsum. Fugiat laboriosam sit dolores magnam laborum soluta veniam. Nostrum natus soluta adipisci at similique neque. Amet molestias eaque ut vero.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(14, 1, 'Voluptatem blanditiis aut deleniti eveniet consequatur enim in.', 'Excepturi voluptas doloremque laborum minima illum minima. Laboriosam tempora et corporis non. Blanditiis illo est et dolores quam molestias. Blanditiis nesciunt impedit id facere. Corporis cupiditate dolor provident sed est perspiciatis aut consectetur. Dolor libero cupiditate modi eos veniam autem. Pariatur rem praesentium adipisci et aut nemo. Voluptatem non est aspernatur aut quos saepe soluta non. Voluptas ut dicta in est vel. Culpa voluptatibus tempora in unde et voluptatem velit maxime. Iste occaecati fugit alias deserunt ullam ducimus. Quis rem qui nobis repudiandae occaecati id sed. Voluptas rerum nostrum excepturi consequatur repudiandae eaque. Sunt deserunt quas consectetur id possimus quia blanditiis. Dolore adipisci eveniet voluptate quas explicabo eius asperiores. Porro qui et enim. Unde dolores et ut autem. Aliquam ipsum ipsam autem in. Itaque nihil eligendi enim voluptas aut quia illo.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(15, 1, 'Molestiae officiis saepe sed quia non.', 'Inventore consequatur sequi inventore nulla. Incidunt odio quia quia aperiam. Dolorem repellendus nostrum quam sapiente et dolorem. Sunt sed maxime qui ratione corporis est. Necessitatibus omnis sed quos tempora dolorem voluptatem. Quod molestiae eius consequatur recusandae neque id dolore. Omnis odit labore aperiam. Et rerum quia nesciunt facere unde rerum fuga. Debitis magnam modi voluptatem quam alias. Soluta magnam corporis ipsam nemo. Eum expedita magnam quia deleniti ut dolorum. Voluptates dolores omnis vel. Dolorem totam aut aliquam omnis omnis. Itaque minus hic voluptate nihil quos ipsa. Sapiente ut id voluptates odio asperiores magni aut.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(16, 1, 'Iure expedita qui cumque consequatur facere delectus impedit.', 'Nisi reiciendis rerum id. Deleniti assumenda qui et id nihil voluptatem. Animi et consectetur est suscipit doloribus laboriosam quo. Modi quia sint ipsum esse et dolorem. Totam eveniet aut est est aperiam commodi repellendus. Officia aliquam dolorem et amet animi repudiandae. Est accusamus dolorem ipsa magni. Minima consequatur sunt nostrum qui voluptatum omnis non. Quia dolorem enim dolor quas natus architecto. Officia nam cumque tempora fugiat nisi accusamus in. Voluptates aut inventore debitis magni ducimus. Est inventore laborum minima enim possimus est veritatis dolores. Dolor occaecati ipsam exercitationem at. Ut nihil rerum fuga aut vitae alias. Molestiae molestias iusto repellendus expedita minima quo. Ea itaque nisi ad consequatur incidunt. Omnis eaque cupiditate maiores ut. Omnis quia excepturi est consequatur et. Ut est eos quia ut ut officiis. Laborum vel numquam excepturi deleniti cumque. Consequuntur aliquid quas eveniet et explicabo. Quas rerum optio debitis reiciendis ex voluptatem. Necessitatibus sunt quis pariatur doloremque aut. Qui quo mollitia sint expedita eligendi.', NULL, '2025-07-14 18:32:29', '2025-07-14 18:32:29'),
(18, 16, 'Test', 'test', 'post_images/TWZPLLX3cBMFIIslH30Yv1YHaxdF7x6QZJ3tSctP.jpg', '2025-07-14 18:39:00', '2025-07-14 19:07:47'),
(19, 16, 'Das', 'ASd', NULL, '2025-07-14 19:10:06', '2025-07-14 19:10:06'),
(20, 16, 'Test', 'Test', 'post_images/JmH3ab2bX8mmE0JrMDzaXGNDvikIMZ1qqTjbad0t.jpg', '2025-07-14 20:45:43', '2025-07-14 20:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cUSAlDLIMxfbqtudQxvgGTObInCWzdNILrzQbIcX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3I2eVVxTlZWNXFKZDdlZWd2U1o5NGdWdUlZNzZQTmptTjFENnNKYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319', 1752571826);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Teresa Lemke', 'mmurray@example.com', '2025-07-14 18:32:21', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'AhPcsosMuY', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(2, 'Abbie Reichert', 'qschuster@example.org', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', '6MofHM3sGa', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(3, 'Braden Luettgen', 'erdman.madisyn@example.net', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'hRGOhF8lZT', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(4, 'Hipolito Kutch', 'rwitting@example.org', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'JSVah1iQgg', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(5, 'Barton Gerhold', 'jett17@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'jxO7hlYQUX', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(6, 'Grover Jakubowski MD', 'udickens@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'OstpbVeCwd', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(7, 'Mr. Barney Gutmann III', 'lafayette06@example.org', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'Ffe9UXwylE', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(8, 'Mr. Kris Larson MD', 'lenna95@example.org', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'lkK92o7y3Q', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(9, 'Missouri Smitham', 'opowlowski@example.net', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'oJhIkJD9mD', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(10, 'Joany Armstrong III', 'berneice.nicolas@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'W3glWwPgc8', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(11, 'Boris Robel', 'qsmith@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', '7AtC4sjkrD', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(12, 'Prof. Bruce Streich II', 'wiza.margarette@example.net', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', '4bM401rs83', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(13, 'Prof. Rylee DuBuque', 'emelie28@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'T14nh0gZqm', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(14, 'Dr. Gloria Muller III', 'stehr.katrine@example.org', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', '5cR4CgPi4c', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(15, 'Dr. Mathew Price I', 'rowe.curtis@example.com', '2025-07-14 18:32:22', '$2y$12$KVs0fr8ekLZZrCFn/utSXO6zqSyYqbkp.l0q4xsC1kzhucizce2b2', 'k5i6Kz0tp8', '2025-07-14 18:32:22', '2025-07-14 18:32:22'),
(16, 'dkeating', 'hotspot5410@gmail.com', NULL, '$2y$12$gCoE6GWtsRv0LiC1D0BKSe1feI.e.mSmhYK2vQHrSAUVeYMQuiJDW', NULL, '2025-07-14 18:33:07', '2025-07-14 18:33:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
