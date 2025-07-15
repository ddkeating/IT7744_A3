-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2025 at 04:36 PM
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
(4, '2025_07_15_003042_create_posts_table', 1),
(5, '2025_07_15_125232_add_is_admin_to_users_table', 1);

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
(1, 1, 'Aliquam deserunt reprehenderit veritatis esse.', 'test', NULL, '2025-07-15 00:54:21', '2025-07-15 01:52:35'),
(4, 1, 'Ea dignissimos doloribus sed quod dignissimos.', 'Nulla est alias explicabo maiores aut. Aut et maxime quas modi. Corporis in quaerat qui et eos. Consequatur nesciunt quia blanditiis architecto praesentium inventore. Laborum eum et est sint quia. Autem molestiae aut quam impedit alias. Animi dolore aspernatur labore aut. Et et quis incidunt aliquam nobis qui dolore. Perferendis voluptatum eum neque autem nemo hic. Modi inventore quis iure quae corporis quod ea. Voluptatem est in aut omnis. Magni non molestiae nisi qui iure. Iusto sint natus dolor officiis enim. Maiores corrupti placeat ipsa libero. Ut id consequatur vero accusantium. Qui ad nihil voluptatem fuga. Non fugiat recusandae placeat vel occaecati nulla incidunt. Laudantium rerum occaecati autem. Perspiciatis aut consequatur pariatur provident. Quidem modi quaerat voluptate qui. Ut aut placeat amet rerum aut unde minima. Dolorem et soluta omnis reiciendis in. Sequi dicta ipsa dolorum fugiat. Quae facere harum et asperiores ut reprehenderit quo. Quo asperiores nesciunt perspiciatis odit. Illum et quas suscipit. Molestias ullam nam et optio molestias quod.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(5, 1, 'Culpa error quaerat hic placeat placeat.', 'Neque non qui soluta et dignissimos. Aut nam iste cum perferendis. Blanditiis culpa assumenda dolore occaecati. Quisquam iusto in placeat repudiandae rerum nesciunt minus. Recusandae nesciunt voluptates molestiae necessitatibus corrupti nihil. Dolores magni sed qui aliquam. Dolorem tempora voluptate nihil quisquam officiis. Dolores sunt aut distinctio fugiat. Nihil dignissimos et tempore et consequuntur nobis. Enim deleniti id dolor provident accusamus quidem. Voluptatem non ex repellendus. Sint facilis molestiae aut autem suscipit. Impedit incidunt minus quis sit dolorem velit. Provident voluptatem debitis repellat officiis facere dolorem. Cum repellendus illo quam. Velit nemo ducimus eveniet quisquam. Nesciunt dolorum quia ipsum maxime sapiente id velit. Quam quia ut cupiditate est minus rerum nihil. Totam quisquam est reiciendis praesentium possimus. Cumque repellendus corrupti tempora alias. Consequuntur tempora qui vero voluptatem ab. Qui nihil eligendi quisquam eum aut soluta reiciendis. Vel quia harum et optio eius dolor recusandae. Repellat repellendus perspiciatis omnis accusantium quia nostrum. Aliquam et sunt illum maxime deserunt.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(6, 1, 'Possimus porro error et aspernatur est voluptatem fuga.', 'Neque a placeat expedita inventore odio esse. Voluptas praesentium magni fugit eum et. Atque atque non rem et ipsam commodi. Quisquam omnis voluptas dolor eum voluptatem quas ullam. Numquam et eveniet harum nihil. Necessitatibus amet excepturi iusto non. Dignissimos odit eos blanditiis consequuntur. Non quidem ut deleniti deserunt labore et. Atque pariatur ut sint aspernatur veritatis et autem iure. Fugit et qui tempore repellendus rerum reprehenderit in. Rem atque commodi tempora libero. Illo maxime maiores dicta dolore. Aliquam voluptatem in fuga dicta. Eos eos mollitia facilis voluptatem. Sit illo et ipsam quis et reiciendis repellendus. Expedita qui deleniti quia odit dolor consectetur. Recusandae natus quisquam ullam velit consequatur rerum fuga dolores. Minima ducimus nobis quidem rem iure dolores. A consequuntur velit occaecati alias omnis. Placeat sint nihil asperiores non blanditiis vero. Rerum nisi officiis et asperiores voluptas suscipit dolor. Quas quia voluptatem ipsa minima maiores et. Odit distinctio dignissimos repudiandae qui quasi dolorem eum. Porro laudantium neque et quibusdam distinctio aut omnis recusandae.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(7, 1, 'Asperiores et laboriosam laborum sapiente dolorem voluptatum sequi.', 'Velit vel facilis rerum. Id sequi eligendi consectetur recusandae est sed ab. Officia id quia illum facere aliquam temporibus mollitia aliquid. Quo amet quia itaque voluptas consequatur vero. Quibusdam ut eligendi et accusamus quidem nulla. Doloremque rerum sit ex magni tempora. Nemo assumenda dolores asperiores voluptas. Voluptatem maiores inventore a saepe delectus ea deleniti. Et omnis enim voluptatum aspernatur. Quod mollitia et sit quo placeat ut occaecati aut. Enim id aut quam non. Aliquam officiis assumenda aut consequuntur. Unde necessitatibus quos ab quo ut. Numquam possimus odio quaerat voluptas earum ipsum. Pariatur veniam eos dolores commodi. Fugit at quo animi nesciunt reprehenderit. Ut est et commodi magnam sint sit. Numquam dolorum et quisquam tempore voluptate facere debitis enim. Quos culpa iste pariatur expedita eaque illum soluta. Quia provident et eius voluptatem ea. Doloremque laborum neque deserunt sed ut eum exercitationem adipisci. Explicabo qui eos cum voluptas dolores temporibus perspiciatis maxime. Quae fuga enim iure consectetur excepturi. Magnam dolores nulla repellat enim possimus tempora est quae. Eaque sit necessitatibus sed porro perspiciatis sunt.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(8, 1, 'Aut error odio maiores amet accusantium mollitia totam.', 'Exercitationem vel accusantium id. Cupiditate voluptates corrupti fuga sunt quis reiciendis. Eum voluptate nihil fugiat saepe quos ut ipsum. Voluptate porro voluptates laborum molestiae nobis et at aut. Tempora ducimus odio tempora a ipsum nam voluptatibus et. Ea vel corporis qui temporibus nostrum accusamus. Necessitatibus fuga veritatis perferendis. Accusantium modi et voluptatum totam vero. Eos ut iste eveniet architecto vel animi. Aut non facere libero et et neque culpa deleniti. In dolores quia animi voluptatem repellat occaecati velit. Debitis sed iure dolor voluptatem deserunt. Et nihil reiciendis ipsam quis itaque necessitatibus ad. Aut excepturi porro non magnam. Voluptatum aut explicabo sint quaerat quas aut. Sit voluptatum quibusdam architecto perferendis. Quod labore sed dignissimos suscipit unde voluptatem laboriosam blanditiis. Beatae voluptatibus accusantium omnis aut quia porro aut. Autem voluptas nam id tempora et. In ut magni doloremque temporibus est consequuntur. Vel unde odit voluptatum vel aliquam. Quae animi expedita temporibus non iusto atque. Voluptas quaerat consequuntur numquam architecto. Sed aliquam mollitia consequatur doloribus quo id aut sed.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(9, 1, 'Assumenda aut quia laudantium voluptas est consequatur quidem.', 'Culpa at non dolorem voluptatem omnis cupiditate. Vitae necessitatibus neque illo velit sunt quia odit. Distinctio rerum minima iste totam. Ratione perferendis voluptas reprehenderit labore. Repellat aut earum iusto modi. Quis corrupti vel ipsum cum quae corporis repellendus. Voluptatem sapiente quam est quia ipsa eveniet. Nesciunt delectus voluptatum officiis quam sint quis. In et dolores velit dolores perspiciatis enim. Quia sint qui fugit blanditiis quo voluptatibus. Quos sit ut ea beatae modi tempora nostrum. Tempora fugiat hic consequatur ipsam culpa. Iure veritatis eligendi et consequatur provident quisquam vitae. Mollitia debitis autem libero eos cumque modi. Voluptas quae optio dicta aut odit voluptatem ab. Nemo iure et impedit eos consequatur molestiae ut.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(10, 1, 'Rerum cum magni possimus.', 'Est et quis et eaque est voluptas quia. Fugiat necessitatibus quisquam necessitatibus eveniet consequatur ad. Tenetur ex dolor tempore corrupti et occaecati asperiores. Eos deleniti itaque hic. Magnam quod doloremque itaque deleniti blanditiis. Necessitatibus qui est iste et. Molestiae est placeat ea. Dolor odit culpa nemo. Ullam non qui nesciunt sed. Est earum rerum et optio ad autem. Neque est quod tenetur sit et id vero. Nulla quae rerum quidem impedit voluptas magnam. Dolores ut numquam qui consequatur. Eum distinctio aperiam nostrum quo quis. Amet alias non suscipit consectetur. Voluptate voluptas illum aliquid dolorum quis illum sit quaerat. Enim incidunt omnis nihil sit sit. Sint voluptas at fuga labore autem voluptates praesentium. Et numquam assumenda voluptates ipsum repellat officia nobis. Voluptas nisi quisquam nobis velit sint accusamus pariatur voluptas. Et alias quia explicabo neque reiciendis deserunt neque. Quasi et tempore ratione non voluptatem non consequuntur ex. Nesciunt excepturi quis repellendus. Est iste neque voluptas. Inventore est blanditiis voluptas repellat eligendi laboriosam. Dignissimos culpa dolorem rerum quasi.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(11, 1, 'Sit possimus eos culpa qui.', 'Asperiores laudantium eum enim. Minus error velit sed exercitationem a eveniet. Et eos sunt velit ab sequi. Praesentium animi cupiditate dolor quae aliquid dicta sint. Ut a dolore laboriosam. Minima nihil dolore quo accusamus sit nihil. Optio adipisci alias voluptates qui aut aut asperiores dolores. Sunt est hic quas ut qui. Sint magni inventore distinctio sed nam est. Vitae omnis ab minima incidunt nobis. Perspiciatis expedita doloribus assumenda dolores voluptas rerum aspernatur dolor. Ipsam et rerum quasi voluptas odio culpa amet. Suscipit iure eos corrupti repudiandae accusantium sed error. Perferendis eos enim ut et. Enim quo minima labore sapiente nobis et necessitatibus. Laborum nesciunt inventore ullam ut voluptas id consequuntur. Voluptates ducimus natus in quibusdam omnis tenetur. Et animi tempora aperiam quaerat aperiam ad. Soluta voluptates quia qui possimus adipisci debitis corporis.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(12, 1, 'Aut est cumque architecto magnam soluta tempore ea.', 'Non eligendi necessitatibus sed et ut illo. Quo ut ipsa iure illum labore necessitatibus. Placeat reiciendis et unde. Fugit dolore doloribus qui corporis repudiandae facere in magnam. Id aut modi est tenetur consequuntur eos. Voluptatibus voluptas omnis eius a itaque aperiam. Quia et commodi ullam consequuntur voluptas magni non saepe. Ipsam est consectetur et et et sit. Voluptatum dolorem rerum voluptas corrupti est. Labore ut totam tenetur rerum. Maiores sunt repellendus voluptates error mollitia dolores. Rerum eligendi excepturi adipisci aliquam. Aliquam tempore rerum non corporis qui quia dolor. Eveniet voluptas repellat aut aliquam et. Officia illum et sapiente quaerat ab et. Qui beatae saepe voluptas tempore dolorem qui. Animi sit ipsam similique fuga in voluptas. Officiis magni provident quo provident. Quisquam illum et dolor libero. Esse quod vel dicta ipsum quae. Adipisci quis repellendus enim maxime et aperiam laborum. Voluptas est incidunt consequatur. Asperiores reprehenderit placeat exercitationem corporis. Eius qui assumenda facere.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(13, 1, 'Consequatur tempora commodi asperiores veritatis ipsam asperiores ipsa beatae.', 'Aperiam fuga reiciendis quia ea aut. Error qui aut deserunt voluptas eaque sit qui. Nobis earum et autem qui excepturi non. Delectus dolorem eveniet et velit. Et fugiat aspernatur voluptate delectus saepe repellat. Cumque cum velit et deleniti dolorem porro esse. Qui velit ratione voluptatem aut tempora enim quibusdam. Rem cum magni cumque optio. Fuga sit sunt beatae iusto sed et fugit. Quo aliquid et excepturi saepe. Deserunt iure est dignissimos sed aut quidem rem enim. Nesciunt et voluptates qui sit et saepe. Quaerat eum voluptatibus distinctio amet. Ut nulla et est ipsam nulla fuga. Incidunt dicta voluptas est quis dolorum. Autem cupiditate nulla provident sint incidunt iure harum. Amet laudantium voluptatibus laborum et. Aut repellat reprehenderit eos. Qui sed molestias excepturi voluptatem illo sed aut necessitatibus. Nulla vel voluptatum ut iure ut dolorem quae.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(14, 1, 'Excepturi et suscipit qui illo quia.', 'Hic eius culpa similique ut accusamus est et. Sint placeat tempora eum animi quos doloremque. Labore vel quaerat est dolorem nesciunt aspernatur. Tempore officia incidunt magni sit explicabo. Qui eum id animi quisquam non et. In nobis est repellat quia. Molestiae perspiciatis aut dolores soluta. Perferendis deleniti dicta soluta aut adipisci veniam ut. Voluptas distinctio dolores perferendis totam. Error qui officia amet officia odit. Qui accusantium incidunt voluptate ut aut voluptas. Neque aspernatur error qui aut dolorem cumque dolorem. Ullam et et fuga sed totam corporis. Voluptatum quasi tenetur animi numquam reprehenderit at et. Repudiandae itaque sit aut ut non recusandae voluptatem possimus. Animi at doloribus voluptatem corporis similique illo. Quos rem amet earum maxime. Sint aperiam modi quia sed quo quae. Iste eos maiores cupiditate saepe modi vitae. Dolor sint aut maiores exercitationem quas delectus cupiditate ut. Qui soluta quia repellendus ut animi. Et autem molestias delectus tempore non.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(15, 1, 'Sint laborum non saepe amet et quisquam at.', 'Omnis fugit et et nulla. Velit suscipit aliquam recusandae saepe quam sapiente voluptatem. Ut laboriosam corporis voluptatum inventore est consequatur. Alias consequatur quia laboriosam aut. Est dolores dolores natus natus quisquam illum incidunt. Non accusantium vero voluptatem quasi nemo non. Cupiditate adipisci adipisci sit atque nobis omnis. Similique ea et ut nihil qui voluptatem nihil. Consectetur sed minus ipsam ut sunt. Cupiditate animi quidem soluta et perferendis. Pariatur explicabo sed soluta reiciendis magnam est mollitia. Rerum qui sit est et. Incidunt qui ipsum corporis. Minima cupiditate sequi et. Assumenda et iste eos. Ut iure consequatur voluptate sequi voluptatem ut laborum. Dolorum ratione perferendis aliquam cumque ullam provident voluptatem illo. Rerum non praesentium consequatur nulla dolore qui. Voluptatum natus facere occaecati sed ut. Alias at magni vero error non.', NULL, '2025-07-15 00:54:21', '2025-07-15 00:54:21'),
(16, 16, 'test', 'test', NULL, '2025-07-15 01:47:06', '2025-07-15 01:47:06'),
(17, 17, 'teEAW', 'awdawadwaw', 'post_images/Jr3aQIsB8vxcpz2ptu7OjBYt1tuh3zjYFaTKAcCp.jpg', '2025-07-15 01:49:16', '2025-07-15 01:52:12');

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
('gsnWbWvOPCufTx0ERkVm53Jiq4XkpaG6op9DMqBM', 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNkg3MnYzTlA0VGtJUDg3NmREV1VnSHcyNndRNEx4azBHeXg1b0JpSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxODt9', 1752590160);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Columbus Ankunding II', 'darrel.durgan@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'IbeFQ25MPh', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(2, 'Sister O\'Kon', 'lowe.nicklaus@example.net', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'FLR5pvvSmL', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(3, 'Addie Watsica', 'jenkins.kenny@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'ukopWLcFbJ', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(4, 'Otto Grady', 'viola04@example.net', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 't8HxnqKK5V', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(5, 'Tatyana Wilkinson', 'hlittle@example.com', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'SRawD8vFGz', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(6, 'Prof. Devonte Gleason V', 'gstamm@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'QkpSqWe1sT', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(7, 'Ludwig Wunsch', 'hstanton@example.com', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'Im5uSaezwF', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(8, 'Maude Collier', 'zpredovic@example.net', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'RR7v071vJx', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(9, 'Arnulfo Marvin', 'cristopher54@example.com', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'bdnl9EWAm0', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(10, 'Tess Satterfield', 'thora66@example.com', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'vHWDxammWv', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(11, 'Mr. Santino Bosco Sr.', 'kilback.sophie@example.net', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'nClUoaOrva', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(12, 'Ezekiel Terry', 'pmurphy@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'vOCbYfsY1R', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(13, 'Mr. Tanner Effertz', 'angela.stiedemann@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'tDkcTD9d5v', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(14, 'Gregorio Klocko', 'kacie27@example.net', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'veeylLXQN4', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(15, 'Sarina Stamm', 'zachariah13@example.org', '2025-07-15 00:54:16', '$2y$12$wOrqYsTA2D8djLZM28ssT.b6J3tgN8HNUbqS/JN3s6IRcOSG6lfDq', 'SxCfdTBa2Q', '2025-07-15 00:54:16', '2025-07-15 00:54:16', 0),
(16, 'dkeating', 'hotspot5410@gmail.com', NULL, '$2y$12$nNgv/r/NVKrJUhCaAzlMdOJ6Gw/tKgyeZL3RbzBQhQXvwof7InLVu', 'xQnxh4t3knRFqz1YtuTFD4hMiO2IMxgp26PggcQcIjL5a71dZ5J8ymAY3nID', '2025-07-15 01:10:53', '2025-07-15 01:10:53', 1),
(17, 'ted', 'ada@gmail.com', NULL, '$2y$12$rEU8p.hewAUxHrmNkHDEyOsrClcZLJEt51TTBffIkxfGAA.MtW7..', NULL, '2025-07-15 01:26:52', '2025-07-15 02:30:25', 0),
(18, 'admin', 'admin@example.com', NULL, '$2y$12$Y4ydN51UTS7OJIu6QTcS6OpfG3zdENe6m4rizGmM0uUJjYo98LnAm', NULL, '2025-07-15 02:35:27', '2025-07-15 02:35:27', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
