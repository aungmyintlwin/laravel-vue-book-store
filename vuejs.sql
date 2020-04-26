-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 09:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuejs`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `rating`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'လက်တွေ့လူကဲခတ်နည်း', 'ပီမိုးနှင်း', '4.5', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587846707_download (1).jpeg', '2020-04-25 14:01:47', '2020-04-25 14:01:47'),
(2, 'ဆုတောင်း​ကာင်းနဲ့လာသူ', 'လရောက်ကျူးရင့်', '3', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587846776_download (2).jpeg', '2020-04-25 14:02:56', '2020-04-25 14:02:56'),
(3, 'ပျင်းရိခြင်းအနုပညာ', 'နိုင်သစ်', '2.5', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587846839_download (3).jpeg', '2020-04-25 14:03:59', '2020-04-25 14:03:59'),
(4, '​​မွှေးပင်မွှေးငြား ပန်းစကား', 'မင်းသိင်္ခ', '4', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587846934_download (4).jpeg', '2020-04-25 14:05:34', '2020-04-25 14:05:34'),
(5, 'မျှော်လင့်ခြင်းဖတ်စာ', 'ချမ်းမြေ့ဝင်း', '4.5', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587847010_images.jpeg', '2020-04-25 14:06:50', '2020-04-25 14:06:50'),
(6, 'ငွေကိုသာစွန့်', 'ဂျက်ဒီဘိုး', '4.5', 'စာဖတ်ခြင်းဟာ အသိပညာ၊ ဗဟုသုတတိုးပွားစေပြီး ဉာဏ်ရည်အတွေးအခေါ် ထက်မြက်စေတယ်လို့ ဉာဏ်ရည်နှင့်တွေးခေါ်မှု‌ဆိုင်ရာ ပညာရှင်များက အဆိုရှိပါတယ်။ စာဖတ်ခြင်းကြောင့် စကားလုံးအသစ်များ ပိုမိုသိရှိလာပြီး စကားပြောဆိုရာတွင်သော်လည်းကောင်း၊ စာရေးရာတွင်သော်လည်းကောင်း ပိုမိုတိုးတက်လာနိုင်ပါတယ်။ အခြားရရှိမယ့်အကျိုးကျေးဇူးကတော့ စိတ်ကိုတည်ငြိမ်စေပြီး တစ်စုံတစ်ခုလုပ်ကိုင်ဖို့ဆုံးဖြတ်ရာတွင် တိကျပြတ်သားစွာလုပ်ကိုင်နိုင်ခြင်းဖြစ်ပါတယ်။ ပူတူးလေးတို့အတွက် ပုံပြင်စာအုပ်လေးများဖတ်ခြင်းကလည်း သူတို့လေးတွေရဲ့ ဉာဏ်ရည်ကို ဖွံ့ဖြိုးတိုးတက်စေပါတယ်။', '1587847084_images.png', '2020-04-25 14:08:04', '2020-04-25 14:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_24_190233_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
