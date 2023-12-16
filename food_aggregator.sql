-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 16 2023 г., 08:59
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `food_aggregator`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Модераторы'),
(1, 'Черный_список');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add shop', 7, 'add_shop'),
(26, 'Can change shop', 7, 'change_shop'),
(27, 'Can delete shop', 7, 'delete_shop'),
(28, 'Can view shop', 7, 'view_shop'),
(29, 'Can add food', 8, 'add_food'),
(30, 'Can change food', 8, 'change_food'),
(31, 'Can delete food', 8, 'delete_food'),
(32, 'Can view food', 8, 'view_food'),
(33, 'Can add city', 9, 'add_city'),
(34, 'Can change city', 9, 'change_city'),
(35, 'Can delete city', 9, 'delete_city'),
(36, 'Can view city', 9, 'view_city'),
(37, 'Can add comments', 10, 'add_comments'),
(38, 'Can change comments', 10, 'change_comments'),
(39, 'Can delete comments', 10, 'delete_comments'),
(40, 'Can view comments', 10, 'view_comments'),
(41, 'Can add comment', 10, 'add_comment'),
(42, 'Can change comment', 10, 'change_comment'),
(43, 'Can delete comment', 10, 'delete_comment'),
(44, 'Can view comment', 10, 'view_comment'),
(45, 'Can add food category', 11, 'add_foodcategory'),
(46, 'Can change food category', 11, 'change_foodcategory'),
(47, 'Can delete food category', 11, 'delete_foodcategory'),
(48, 'Can view food category', 11, 'view_foodcategory'),
(49, 'Can add food type', 12, 'add_foodtype'),
(50, 'Can change food type', 12, 'change_foodtype'),
(51, 'Can delete food type', 12, 'delete_foodtype'),
(52, 'Can view food type', 12, 'view_foodtype'),
(53, 'Can add product', 13, 'add_product'),
(54, 'Can change product', 13, 'change_product'),
(55, 'Can delete product', 13, 'delete_product'),
(56, 'Can view product', 13, 'view_product'),
(57, 'Can add product description', 14, 'add_productdescription'),
(58, 'Can change product description', 14, 'change_productdescription'),
(59, 'Can delete product description', 14, 'delete_productdescription'),
(60, 'Can view product description', 14, 'view_productdescription'),
(61, 'Can add instance of product', 15, 'add_instanceofproduct'),
(62, 'Can change instance of product', 15, 'change_instanceofproduct'),
(63, 'Can delete instance of product', 15, 'delete_instanceofproduct'),
(64, 'Can view instance of product', 15, 'view_instanceofproduct'),
(65, 'Can add food', 21, 'add_food'),
(66, 'Can change food', 21, 'change_food'),
(67, 'Can delete food', 21, 'delete_food'),
(68, 'Can view food', 21, 'view_food'),
(69, 'Can add shop', 22, 'add_shop'),
(70, 'Can change shop', 22, 'change_shop'),
(71, 'Can delete shop', 22, 'delete_shop'),
(72, 'Can view shop', 22, 'view_shop'),
(73, 'Can add city', 23, 'add_city'),
(74, 'Can change city', 23, 'change_city'),
(75, 'Can delete city', 23, 'delete_city'),
(76, 'Can view city', 23, 'view_city'),
(77, 'Can add comment', 16, 'add_comment'),
(78, 'Can change comment', 16, 'change_comment'),
(79, 'Can delete comment', 16, 'delete_comment'),
(80, 'Can view comment', 16, 'view_comment'),
(81, 'Can add food category', 17, 'add_foodcategory'),
(82, 'Can change food category', 17, 'change_foodcategory'),
(83, 'Can delete food category', 17, 'delete_foodcategory'),
(84, 'Can view food category', 17, 'view_foodcategory'),
(85, 'Can add food type', 18, 'add_foodtype'),
(86, 'Can change food type', 18, 'change_foodtype'),
(87, 'Can delete food type', 18, 'delete_foodtype'),
(88, 'Can view food type', 18, 'view_foodtype'),
(89, 'Can add product description', 20, 'add_productdescription'),
(90, 'Can change product description', 20, 'change_productdescription'),
(91, 'Can delete product description', 20, 'delete_productdescription'),
(92, 'Can view product description', 20, 'view_productdescription'),
(93, 'Can add instance of product', 19, 'add_instanceofproduct'),
(94, 'Can change instance of product', 19, 'change_instanceofproduct'),
(95, 'Can delete instance of product', 19, 'delete_instanceofproduct'),
(96, 'Can view instance of product', 19, 'view_instanceofproduct');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$v8UmntM907rmSdQ1Cmhon1$rOJNGhEPGwurDEJVkgBn7v1Y7CqH2j+GxgvjPBUWkvU=', '2023-12-16 07:08:32.356001', 1, 'moderator', '', '', '', 1, 1, '2023-09-08 16:01:29.000000'),
(2, 'pbkdf2_sha256$600000$4YJ4b84vFtza9pLBYTOYw9$CRfVPpwsgkkYZzMqdk7YMFxg/3wJkydK++kZ7VOfXqY=', NULL, 0, 'OrdinaryUser', '', '', '', 0, 1, '2023-09-08 16:06:05.491654'),
(3, 'pbkdf2_sha256$600000$SyWROFO2GBR66PbuJWkFe5$rkrsqB2dPg1NxFhZtO/14NOpAJ0whf5rcgucEbBpft8=', '2023-11-22 08:00:17.482160', 0, 'aaa', '', '', 'qwer@qwe.ru', 0, 1, '2023-10-30 15:54:11.000000'),
(4, 'pbkdf2_sha256$600000$56ioggFhKctGqFC5Av2vIj$Y6SdJVAHs9kUaYTE2JejCgMl/vMUEZzEQhTS+aiiwZ4=', '2023-12-16 07:08:51.136399', 0, 'User1', '', '', 'user1@mail.ru', 0, 1, '2023-11-22 08:02:38.000000'),
(5, 'pbkdf2_sha256$600000$3yWbDvhaJaYkXRmPrvrMKf$2iLyxV1UjeBh5xEICVMBdHl2vJ50Nm8UWOK9Kk4R6Eg=', '2023-12-15 15:24:26.211180', 0, 'user2', '', '', 'user2@mail.ru', 0, 1, '2023-11-30 07:12:37.153925'),
(7, 'pbkdf2_sha256$600000$Qip0fyF7BOMAZTm8wwBoLb$jnL0or4rbfZuNDe8fyjHo+SZ1R8BySXp60Dv9Gopm7g=', '2023-12-01 12:08:52.443902', 0, 'aa', '', '', 'user2@mail.ru', 0, 1, '2023-12-01 12:08:52.180885'),
(8, 'pbkdf2_sha256$600000$O1lPzWZ3wF7OPSiofo6vLK$f9Db+9pr38Dcc6NorJSKVqZTe91V7wxjtOY76jFf9qM=', '2023-12-15 15:39:05.397085', 0, 'qwerty', '', '', 'user2@mail.ru', 0, 1, '2023-12-01 12:20:16.104886'),
(9, 'pbkdf2_sha256$600000$SxhDLX2RO3OcDbiqmCXnMf$2pdoWn30outNOmKvRkOg9WbL5DkvFrm12MNg7bnMpi0=', '2023-12-14 08:46:33.507868', 0, 'user', '', '', 'user2@mail.r', 0, 1, '2023-12-01 12:27:56.224635'),
(10, 'pbkdf2_sha256$600000$6sF0sd0ZyfrOQ3r6cBEWrR$lvSB54k86w9Okr0LMoHnM6xyECnMnpOqWAJ3eo23QMQ=', '2023-12-15 05:32:29.428078', 0, 'user5', '', '', 'user@m.ru', 0, 1, '2023-12-14 08:48:41.468362'),
(11, 'pbkdf2_sha256$600000$DVASZC3fOXsFLV7zzbC86F$uIK8RBen1K1OVTNi6cLi97QtdWxWTrqg1iHawugMC1g=', '2023-12-16 06:47:03.010828', 0, 'rety', '', '', 'qwer@qwe', 0, 1, '2023-12-15 15:56:10.016474'),
(12, 'pbkdf2_sha256$600000$pqFYfZkBgLWHpP8iG7xNQV$Kzo9RLFIb+q55j7C/TWZVAfAK07ufKGkpZTxIgXofcQ=', '2023-12-16 06:52:40.297616', 0, 'userq', '', '', 'qwer@a', 0, 1, '2023-12-16 06:52:40.085577'),
(13, 'pbkdf2_sha256$600000$7uGdc093lWDEomlXiU6GMp$dVKWxeF9Dyqi9Sse3babu+4mEAB/NC2O86wnmWeSBVQ=', '2023-12-16 06:57:18.202238', 0, 'userh', '', '', 'dfgdf@q', 0, 1, '2023-12-16 06:57:17.921206'),
(14, 'pbkdf2_sha256$600000$60tt05Nar2j0o0vtQrGidE$cx1QFNHB++HAhxflUAYPHkncyYYI/RBeNzpH619onbw=', '2023-12-16 07:05:46.086998', 0, 'userk', '', '', 'qwer@g', 0, 1, '2023-12-16 07:05:45.872254'),
(15, 'pbkdf2_sha256$600000$GcOa1jkzqKUCfzIPuB7CiB$DYiIwnhALoLNFvpA4GDXIbgWC4joPYhE9N7HW1N770Y=', '2023-12-16 07:07:24.521598', 0, 'userl', '', '', 'wert@q', 0, 1, '2023-12-16 07:07:24.310550');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 2),
(1, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `mark` smallint(5) UNSIGNED DEFAULT NULL CHECK (`mark` >= 0),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `comment`, `datetime`, `product_id`, `mark`, `user_id`) VALUES
(28, '', '2023-10-20 09:24:03.958633', NULL, NULL, 0),
(30, 'qerwer', '2023-10-30 16:09:31.228551', 3, 1, 1),
(34, 'Супер', '2023-11-22 08:03:18.904572', 3, 5, 4),
(36, 'К сожалению, я не смог оценить молоко “Домик в деревне”, так как оно совершенно не понравилось мне на вкус. Я ощутил странный привкус, который не позволил мне насладиться этим продуктом. Консистенция молока также показалась мне подозрительной, что вызвало сомнения в его качестве. Поэтому, я не могу рекомендовать это молоко другим людям.', '2023-11-22 08:06:37.717602', 2, 1, 4),
(37, 'Я использую это молоко для приготовления различных напитков, таких как кофе, чай, какао и молочные коктейли. Также я часто использую его для приготовления молочных каш, омлетов и других блюд.\r\n\r\nВ общем, я очень доволен этим молоком и рекомендую его всем, кто ищет качественный и полезный продукт.', '2023-12-13 10:59:09.109777', 1, 5, 9),
(38, 'Привезли прокисшее молоко. Дизлайлк.', '2023-12-15 05:31:08.680768', 1, 0, 10),
(39, 'Батон нарезной - идеальный баланс между мягкостью и хрустом корочки, каждый ломтик словно приглашает вас насладиться своим нежным мякишем. Вкус, знакомый с детства, и непременный атрибут любого стола - этот батон станет настоящим хитом вашей кухни!', '2023-12-15 11:26:44.301813', 6, 5, 1),
(40, 'Ням, ням, ням', '2023-12-15 11:39:09.663589', 8, 4, 1),
(41, 'Я недавно попробовал молоко “Простоквашино” и, хотя оно оказалось довольно вкусным, я не могу поставить ему пять баллов. Да, оно имеет приятный вкус и аромат, но до идеала ему далековато.', '2023-12-15 15:14:34.372662', 1, 3, 1),
(42, 'Я недавно попробовал молоко и мне оно показалось довольно хорошим. Вкус мягкий, приятный, с легкой сладостью, которая придает ему особую нежность. Консистенция достаточно жидкая, но не водянистая, что говорит о хорошем качестве продукта. Упаковка удобная и герметичная, что гарантирует свежесть и сохранность продукта на протяжении всего срока годности.\r\n\r\nОднако, я заметил, что некоторые марки молока могут иметь более выраженный вкус и консистенцию, что может понравиться не всем. Кроме того, цена на молоко иногда может быть выше, чем хотелось бы. Тем не менее, в целом, я доволен своим выбором и могу рекомендовать молоко другим.', '2023-12-15 15:19:37.559345', 4, 4, 4),
(43, 'Вообще топ!!!', '2023-12-15 15:20:07.677201', 5, 5, 4),
(44, 'Батон нарезной имеет некоторые положительные качества, такие как приятный внешний вид и хороший аромат. Однако, его вкус оставляет желать лучшего - слишком пресный и невыразительный. Кроме того, текстура хлеба довольно грубая, что не всем придется по вкусу. Батон сложно нарезать на аккуратные, ровные ломтики из-за его плотной корочки. В целом, я бы оценила батон нарезной на 2 балла из 5.', '2023-12-15 15:21:45.781635', 6, 2, 4),
(45, 'Какая же гадость, эта ваша селяночка...', '2023-12-15 15:22:22.194347', 8, 0, 4),
(46, 'Недавно купила хлеб Красная Цена Украинский, и, к сожалению, осталась недовольна. Хлеб оказался очень сухим, что значительно ухудшило его вкус и качество. Мне казалось, что такой продукт не может называться Украинским хлебом, так как данный вид хлеба должен быть мягким и воздушным.', '2023-12-15 15:23:33.187185', 9, 1, 4),
(47, 'Свежий, ароматный, с хрустящей корочкой – идеальный хлеб для тостов и бутербродов. Всем рекомендую.', '2023-12-15 15:24:16.562099', 10, 5, 4),
(48, 'Вкус продукта оказался довольно неприятным, с непонятным кисловатым оттенком. Консистенция слишком водянистая, нет той приятной густоты, которую ожидаешь от молока. Упаковка удобная, но в данном случае это сомнительное преимущество. Цена молока не соответствует качеству.', '2023-12-15 15:25:13.465256', 2, 1, 5),
(49, 'Это молоко - прекрасный выбор, вкус и качество на высоте. Отлично подходит для утреннего кофе или вечернего душа. Рекомендую всем попробовать именно эту марку!', '2023-12-15 15:26:29.527517', 4, 5, 5),
(50, 'Очень вкусное молоко. С самого начала меня привлекла его красивая и стильная упаковка, выполненная в зеленых тонах, которая сразу выделяется на полке магазина.', '2023-12-15 15:27:37.463842', 5, 5, 5),
(51, 'Великолепный хлеб! Он просто идеален для сочетания с маслом и сыром. Когда я отламываю кусочек этого хлеба, он такой воздушный и мягкий, что буквально тает во рту. Вкус у него очень насыщенный и приятный, чувствуется, что он сделан из высококачественной муки. А когда я намазываю на него масло и кладу сверху кусочек сыра, это просто непередаваемо вкусно! Все ингредиенты идеально сочетаются друг с другом, и каждый раз я открываю для себя новые нотки этого прекрасного бутерброда.', '2023-12-15 15:28:25.478971', 3, 5, 5),
(52, 'К сожалению, хлеб оказался очень простым и неинтересным на вкус.', '2023-12-15 15:28:54.139771', 6, 1, 5),
(53, 'Я очень люблю хлеб! Он такой вкусный и мягкий. А еще он очень полезен для здоровья. В хлебе есть много витаминов и минералов, которые помогают организму работать правильно. А еще я люблю есть хлеб с сыром или колбасой. Это мое любимое блюдо на завтрак. Спасибо производителям хлеба за такой вкусный и полезный продукт!', '2023-12-15 15:30:47.812116', 7, 4, 5),
(54, 'Ребята, хочу рассказать вам о чем-то очень вкусном и полезном – это хлеб! Я настоятельно рекомендую вам попробовать его, потому что это не просто еда, это настоящее чудо!', '2023-12-15 15:31:17.570825', 8, 4, 5),
(55, 'Очень посредственный хлеб. Еле дотягивает до 3.', '2023-12-15 15:34:09.998870', 9, 3, 5),
(56, 'Никогда не ел ничего хуже!!!! Что вы туда кладете!? Одна химия.', '2023-12-15 15:34:51.717223', 10, 0, 5),
(57, 'Нуууууууууу... такое', '2023-12-15 15:35:58.251786', 2, 2, 8),
(59, 'НЕ МОЛОКО А ВОДА! У производителей ни стыда ни совести', '2023-12-15 15:37:35.147277', 5, 0, 8),
(60, 'Однако, важно отметить, что качество хлеба может варьироваться в зависимости от производителя и ингредиентов, используемых в его изготовлении. Поэтому рекомендуется обращать внимание на состав и качество хлеба при его выборе.', '2023-12-15 15:41:13.744135', 7, 5, 8),
(61, '**** ******** ************ ***** ******** ******', '2023-12-15 15:41:35.830908', 9, 0, 8),
(62, '1234ывм134ывм1234квм1', '2023-12-15 15:41:56.527704', 10, 1, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-08 16:06:06.027729', '2', 'OrdinaryUser', 1, '[{\"added\": {}}]', 4, 1),
(2, '2023-09-23 08:20:08.986935', '1', 'Food object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2023-09-23 08:30:56.583310', '1', 'Shop object (1)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-09-23 08:31:22.965807', 'Москва', 'City object (Москва)', 1, '[{\"added\": {}}]', 9, 1),
(5, '2023-09-23 08:32:14.072127', '1', 'Shop object (1)', 2, '[{\"changed\": {\"fields\": [\"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\", \"\\u0410\\u0434\\u0440\\u0435\\u0441\", \"\\u041a\\u043e\\u0433\\u0434\\u0430 \\u0431\\u044b\\u043b \\u043e\\u0442\\u043a\\u0440\\u044b\\u0442\"]}}]', 7, 1),
(6, '2023-09-23 08:41:32.724946', '2', 'Shop object (2)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-10-02 06:53:33.360296', '3', 'Сыр', 1, '[{\"added\": {}}]', 8, 1),
(8, '2023-10-02 06:53:53.803987', '4', 'Макароны', 1, '[{\"added\": {}}]', 8, 1),
(9, '2023-10-02 06:55:51.997643', '3', 'Магнит', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-10-02 06:56:04.248066', '4', 'Магнит', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-10-08 09:52:42.915868', '5', 'Пятерочка', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-10-08 09:53:25.384852', '6', 'Магнит', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-10-08 09:53:50.966985', '5', 'Молоко', 1, '[{\"added\": {}}]', 8, 1),
(14, '2023-10-08 09:54:07.486827', '6', 'Хлеб', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-10-08 09:54:37.770707', '7', 'Сыр', 1, '[{\"added\": {}}]', 8, 1),
(16, '2023-10-08 09:55:01.965205', '8', 'Масло', 1, '[{\"added\": {}}]', 8, 1),
(17, '2023-10-15 08:20:58.706246', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(18, '2023-10-15 08:21:04.250320', '7', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(19, '2023-10-15 08:21:08.150480', '6', 'Хлеб', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(20, '2023-10-15 08:21:11.573464', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(21, '2023-10-15 08:22:30.649885', 'Санкт-Петербург', 'Санкт-Петербург', 1, '[{\"added\": {}}]', 9, 1),
(22, '2023-10-15 08:22:32.911845', 'Москва', 'Москва', 2, '[]', 9, 1),
(23, '2023-10-15 08:22:34.870486', 'Санкт-Петербург', 'Санкт-Петербург', 2, '[]', 9, 1),
(24, '2023-10-15 12:47:14.859115', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(25, '2023-10-15 12:47:42.378123', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(26, '2023-10-15 12:50:10.698987', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(27, '2023-10-15 12:50:33.087906', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(28, '2023-10-15 12:50:47.934634', '6', 'Хлеб', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(29, '2023-10-15 12:50:52.124944', '7', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(30, '2023-10-15 12:50:56.630937', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(31, '2023-10-15 13:03:21.860607', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(32, '2023-10-15 13:03:55.682667', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(33, '2023-10-15 13:04:48.779659', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(34, '2023-10-15 13:05:57.067631', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(35, '2023-10-15 13:06:04.645111', '7', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(36, '2023-10-15 13:06:08.867644', '6', 'Хлеб', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(37, '2023-10-15 13:06:13.854850', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 8, 1),
(38, '2023-10-15 15:11:13.823545', '1', 'Comment object (1)', 1, '[{\"added\": {}}]', 10, 1),
(39, '2023-10-15 15:11:39.320600', '2', 'Comment object (2)', 1, '[{\"added\": {}}]', 10, 1),
(40, '2023-10-15 15:43:43.502764', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]', 8, 1),
(41, '2023-10-15 15:45:41.724105', '7', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]', 8, 1),
(42, '2023-10-15 15:45:55.290558', '6', 'Хлеб', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]', 8, 1),
(43, '2023-10-15 15:46:06.912427', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]', 8, 1),
(44, '2023-10-15 15:51:59.253934', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]', 8, 1),
(45, '2023-10-15 16:25:59.191125', '4', 'Comment object (4)', 3, '', 10, 1),
(46, '2023-10-15 16:26:02.095885', '3', 'Comment object (3)', 3, '', 10, 1),
(47, '2023-10-17 08:01:56.217773', '1', 'Молочные продукты', 1, '[{\"added\": {}}]', 11, 1),
(48, '2023-10-17 08:02:59.909550', '2', 'Выпечка', 1, '[{\"added\": {}}]', 11, 1),
(49, '2023-10-17 08:03:08.494821', '3', 'Овощи', 1, '[{\"added\": {}}]', 11, 1),
(50, '2023-10-17 08:03:18.164892', '4', 'Фрукты', 1, '[{\"added\": {}}]', 11, 1),
(51, '2023-10-17 08:03:52.116753', '8', 'Масло', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430\"]}}]', 8, 1),
(52, '2023-10-17 08:03:57.160658', '7', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430\"]}}]', 8, 1),
(53, '2023-10-17 08:04:01.038847', '6', 'Хлеб', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430\"]}}]', 8, 1),
(54, '2023-10-17 08:04:04.019505', '5', 'Молоко', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\\u0430\"]}}]', 8, 1),
(55, '2023-10-17 09:30:05.364293', '1', 'Молоко', 1, '[{\"added\": {}}]', 12, 1),
(56, '2023-10-17 09:30:28.486125', '2', 'Сыр', 1, '[{\"added\": {}}]', 12, 1),
(57, '2023-10-17 09:31:10.740013', '2', 'Сыр', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 12, 1),
(58, '2023-10-17 09:31:50.440803', '3', 'Хлеб', 1, '[{\"added\": {}}]', 12, 1),
(59, '2023-10-17 09:32:56.217819', '4', 'Масло', 1, '[{\"added\": {}}]', 12, 1),
(60, '2023-10-17 09:33:05.729635', '4', 'Масло сливочное', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\"]}}]', 12, 1),
(61, '2023-10-17 09:35:40.860530', '1', 'Молоко простоквашино 3.2%', 1, '[{\"added\": {}}]', 13, 1),
(62, '2023-10-17 09:36:23.452918', '1', 'Молоко простоквашино 3.2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\"]}}]', 13, 1),
(63, '2023-10-17 09:37:30.715447', '2', 'Молоко \"Домик в деревн\" 3,2% ультрапастеризованное', 1, '[{\"added\": {}}]', 13, 1),
(64, '2023-10-17 09:37:47.748425', '1', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\"]}}]', 13, 1),
(65, '2023-10-17 09:40:21.480215', '3', 'Хлеб \"Рижский Хлеб\"', 1, '[{\"added\": {}}]', 13, 1),
(66, '2023-10-17 10:34:35.564353', '3', 'Хлеб \"Рижский Хлеб\"', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 13, 1),
(67, '2023-10-17 10:35:21.563755', '2', 'Молоко \"Домик в деревн\" 3,2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 13, 1),
(68, '2023-10-17 10:35:59.064868', '1', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 13, 1),
(69, '2023-10-18 07:00:57.986903', '3', 'Хлеб \"Рижский Хлеб\"', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\", \"\\u0421\\u043e\\u0441\\u0442\\u0430\\u0432\"]}}]', 13, 1),
(70, '2023-10-18 07:02:07.830882', '2', 'Молоко \"Домик в деревн\" 3,2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043e\\u0441\\u0442\\u0430\\u0432\"]}}]', 13, 1),
(71, '2023-10-18 07:02:14.308960', '1', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043e\\u0441\\u0442\\u0430\\u0432\"]}}]', 13, 1),
(72, '2023-10-18 07:02:34.722010', '2', 'Молоко \"Домик в деревне\" 3,2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\"]}}]', 13, 1),
(73, '2023-10-18 07:26:39.040648', '1', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 1, '[{\"added\": {}}]', 14, 1),
(74, '2023-10-18 07:27:45.228622', '2', 'Молоко \"Домик в деревне\" 3,2% ультрапастеризованное', 1, '[{\"added\": {}}]', 14, 1),
(75, '2023-10-18 07:29:28.661318', '3', 'Хлеб \"Рижский Хлеб\"', 1, '[{\"added\": {}}]', 14, 1),
(76, '2023-10-18 07:29:34.617088', '3', 'Хлеб \"Рижский Хлеб\"', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 14, 1),
(77, '2023-10-18 07:31:06.371652', '2', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 1, '[{\"added\": {}}]', 15, 1),
(78, '2023-10-18 07:45:48.862581', '3', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 1, '[{\"added\": {}}]', 15, 1),
(79, '2023-10-18 07:46:36.161809', '4', 'Молоко \"Домик в деревне\" 3,2% ультрапастеризованное Пятерочка', 1, '[{\"added\": {}}]', 15, 1),
(80, '2023-10-18 07:46:45.195681', '5', 'Молоко \"Домик в деревне\" 3,2% ультрапастеризованное Магнит', 1, '[{\"added\": {}}]', 15, 1),
(81, '2023-10-18 07:46:53.284451', '6', 'Хлеб \"Рижский Хлеб\" Пятерочка', 1, '[{\"added\": {}}]', 15, 1),
(82, '2023-10-18 07:47:02.878202', '7', 'Хлеб \"Рижский Хлеб\" Магнит', 1, '[{\"added\": {}}]', 15, 1),
(83, '2023-10-18 08:12:38.006782', '1', 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430\"]}}]', 14, 1),
(84, '2023-10-20 07:33:53.476698', '22', 'Глеб 2023-10-20 07:18:35.805527+00:00', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u0446\\u0435\\u043d\\u043a\\u0430\"]}}]', 10, 1),
(85, '2023-10-20 07:33:58.001963', '21', 'etr 2023-10-20 07:17:31.006364+00:00', 2, '[{\"changed\": {\"fields\": [\"\\u041e\\u0446\\u0435\\u043d\\u043a\\u0430\"]}}]', 10, 1),
(86, '2023-10-20 08:39:33.781316', '26', 'Бабабуй 2023-10-20 08:37:05.625323+00:00', 2, '[{\"changed\": {\"fields\": [\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"]}}]', 10, 1),
(87, '2023-11-08 12:15:44.419118', '1', 'Черный список', 1, '[{\"added\": {}}]', 3, 1),
(88, '2023-11-08 12:25:54.857514', '1', 'Черный_список', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(89, '2023-11-08 12:26:52.674061', '3', 'aaa', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(90, '2023-11-22 07:39:52.812595', '2', 'Модераторы', 1, '[{\"added\": {}}]', 3, 1),
(91, '2023-11-22 07:40:11.312414', '1', 'moderator', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(92, '2023-12-15 15:46:09.875634', '5', 'Торты', 1, '[{\"added\": {}}]', 18, 1),
(93, '2023-12-16 06:49:13.620837', '5', 'Пироги', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0442\"]}}]', 18, 1),
(94, '2023-12-16 06:58:53.781649', '4', 'User1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(95, '2023-12-16 06:59:42.101565', '4', 'User1', 2, '[]', 4, 1),
(96, '2023-12-16 07:03:11.316643', '4', 'User1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1),
(97, '2023-12-16 07:08:40.800251', '4', 'User1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(23, 'FoodAggregatorApp', 'city'),
(16, 'FoodAggregatorApp', 'comment'),
(21, 'FoodAggregatorApp', 'food'),
(17, 'FoodAggregatorApp', 'foodcategory'),
(18, 'FoodAggregatorApp', 'foodtype'),
(19, 'FoodAggregatorApp', 'instanceofproduct'),
(20, 'FoodAggregatorApp', 'productdescription'),
(22, 'FoodAggregatorApp', 'shop'),
(9, 'Lab1App', 'city'),
(10, 'Lab1App', 'comment'),
(8, 'Lab1App', 'food'),
(11, 'Lab1App', 'foodcategory'),
(12, 'Lab1App', 'foodtype'),
(15, 'Lab1App', 'instanceofproduct'),
(13, 'Lab1App', 'product'),
(14, 'Lab1App', 'productdescription'),
(7, 'Lab1App', 'shop'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-08 15:58:11.025720'),
(2, 'auth', '0001_initial', '2023-09-08 15:58:13.810032'),
(3, 'admin', '0001_initial', '2023-09-08 15:58:14.317832'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-09-08 15:58:14.327834'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-08 15:58:14.346839'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-09-08 15:58:14.521878'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-09-08 15:58:15.053991'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-09-08 15:58:15.125795'),
(9, 'auth', '0004_alter_user_username_opts', '2023-09-08 15:58:15.133798'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-09-08 15:58:15.289975'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-09-08 15:58:15.296977'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-09-08 15:58:15.341898'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-09-08 15:58:15.364222'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-09-08 15:58:15.400237'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-09-08 15:58:15.455872'),
(16, 'auth', '0011_update_proxy_permissions', '2023-09-08 15:58:15.468879'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-09-08 15:58:15.493885'),
(18, 'sessions', '0001_initial', '2023-09-08 15:58:15.646942'),
(19, 'Lab1App', '0001_initial', '2023-09-23 08:12:19.498027'),
(20, 'Lab1App', '0002_rename_city_name_shop_food', '2023-09-23 08:29:44.547192'),
(22, 'Lab1App', '0003_alter_shop_food_alter_city_table_alter_food_table_and_more', '2023-10-08 09:34:21.124446'),
(23, 'Lab1App', '0004_remove_city_shop_remove_shop_food_food_shop_and_more', '2023-10-08 09:40:38.343430'),
(24, 'Lab1App', '0005_remove_shop_city', '2023-10-08 09:40:38.387440'),
(25, 'Lab1App', '0006_shop_city_alter_food_shop', '2023-10-08 09:40:38.398424'),
(26, 'Lab1App', '0007_remove_food_shop_remove_shop_city_delete_city_and_more', '2023-10-08 09:40:38.409427'),
(27, 'Lab1App', '0008_initial', '2023-10-08 09:40:38.416430'),
(28, 'Lab1App', '0009_food_shop_shop_city', '2023-10-08 09:40:38.421430'),
(29, 'Lab1App', '0010_remove_shop_city', '2023-10-08 09:43:44.691997'),
(30, 'Lab1App', '0011_shop_city', '2023-10-08 09:44:08.863340'),
(31, 'Lab1App', '0012_alter_food_shop_alter_shop_city', '2023-10-08 09:45:40.652620'),
(32, 'Lab1App', '0013_remove_food_price_remove_food_shop_and_more', '2023-10-08 09:46:44.143533'),
(33, 'Lab1App', '0014_food_price_food_shop_food_weight', '2023-10-08 09:48:22.207765'),
(34, 'Lab1App', '0015_alter_food_shop_alter_shop_city', '2023-10-08 09:51:18.160877'),
(35, 'Lab1App', '0016_city_id_user', '2023-10-08 10:03:24.919434'),
(36, 'Lab1App', '0017_rename_id_user_city_user', '2023-10-08 10:51:14.207601'),
(37, 'Lab1App', '0018_food_image', '2023-10-15 08:17:12.553856'),
(38, 'Lab1App', '0019_comments_alter_food_image', '2023-10-15 15:06:47.144318'),
(39, 'Lab1App', '0020_alter_food_image', '2023-10-15 15:06:47.189729'),
(40, 'Lab1App', '0021_alter_comments_table', '2023-10-15 15:07:50.626174'),
(41, 'Lab1App', '0022_rename_comments_comment', '2023-10-15 15:09:10.505914'),
(42, 'Lab1App', '0023_comment_food_id', '2023-10-15 15:10:32.145704'),
(43, 'Lab1App', '0024_rename_food_id_comment_food', '2023-10-15 15:12:06.325621'),
(44, 'Lab1App', '0025_food_description', '2023-10-15 15:42:19.089341'),
(45, 'Lab1App', '0026_foodcategory_remove_food_shop_alter_comment_comment_and_more', '2023-10-17 08:00:13.757774'),
(46, 'Lab1App', '0027_alter_foodcategory_table', '2023-10-17 08:01:39.820942'),
(47, 'Lab1App', '0028_foodtype_product_remove_comment_food_and_more', '2023-10-17 09:27:28.334345'),
(48, 'Lab1App', '0029_product_image_alter_foodtype_image', '2023-10-17 10:32:10.629666'),
(49, 'Lab1App', '0030_product_ingredients', '2023-10-18 06:59:36.718381'),
(50, 'Lab1App', '0031_alter_product_ingredients', '2023-10-18 07:00:07.180326'),
(51, 'Lab1App', '0032_alter_product_name', '2023-10-18 07:02:27.540355'),
(52, 'Lab1App', '0033_productdescription_instanceofproduct_and_more', '2023-10-18 07:19:07.985075'),
(53, 'Lab1App', '0034_remove_foodcategory_id_alter_foodcategory_name', '2023-10-18 07:25:08.347665'),
(54, 'Lab1App', '0035_remove_foodtype_foodcategory_foodcategory_id_and_more', '2023-10-18 07:25:08.380664'),
(55, 'Lab1App', '0036_foodtype_foodcategory', '2023-10-18 07:25:08.408672'),
(56, 'Lab1App', '0037_comment_mark', '2023-10-20 07:33:08.073654'),
(57, 'Lab1App', '0038_alter_comment_mark', '2023-10-20 07:33:08.081655'),
(58, 'Lab1App', '0039_alter_comment_mark', '2023-10-20 07:53:48.901299'),
(59, 'Lab1App', '0040_alter_comment_mark', '2023-10-20 08:06:40.196299'),
(60, 'Lab1App', '0041_alter_comment_mark', '2023-10-20 08:07:24.260073'),
(61, 'Lab1App', '0042_remove_comment_nickname_comment_user_and_more', '2023-10-20 08:50:16.590875'),
(62, 'Lab1App', '0043_remove_city_user_alter_comment_user', '2023-12-15 10:48:12.291274'),
(63, 'Lab1App', '0044_alter_comment_user', '2023-12-15 10:48:12.343286'),
(64, 'Lab1App', '0045_rename_opened_in_shop_founded_in_and_more', '2023-12-15 10:50:53.665624'),
(65, 'FoodAggregatorApp', '0001_initial', '2023-12-15 15:47:03.091130'),
(66, 'FoodAggregatorApp', '0002_rename_city_name_shop_food', '2023-12-15 15:47:03.934090'),
(67, 'FoodAggregatorApp', '0003_alter_shop_food_alter_city_table_alter_food_table_and_more', '2023-12-15 15:48:05.448075'),
(68, 'FoodAggregatorApp', '0004_remove_city_shop_remove_shop_food_food_shop_and_more', '2023-12-15 15:48:05.484081'),
(69, 'FoodAggregatorApp', '0005_remove_shop_city', '2023-12-15 15:48:05.509087'),
(70, 'FoodAggregatorApp', '0006_shop_city_alter_food_shop', '2023-12-15 15:48:05.514089'),
(71, 'FoodAggregatorApp', '0007_remove_food_shop_remove_shop_city_delete_city_and_more', '2023-12-15 15:48:05.519089'),
(72, 'FoodAggregatorApp', '0008_initial', '2023-12-15 15:48:05.524091'),
(73, 'FoodAggregatorApp', '0009_food_shop_shop_city', '2023-12-15 15:48:05.529093'),
(74, 'FoodAggregatorApp', '0010_remove_shop_city', '2023-12-15 15:48:05.547096'),
(75, 'FoodAggregatorApp', '0011_shop_city', '2023-12-15 15:48:05.553097'),
(76, 'FoodAggregatorApp', '0012_alter_food_shop_alter_shop_city', '2023-12-15 15:48:05.558098'),
(77, 'FoodAggregatorApp', '0013_remove_food_price_remove_food_shop_and_more', '2023-12-15 15:48:05.563099'),
(78, 'FoodAggregatorApp', '0014_food_price_food_shop_food_weight', '2023-12-15 15:48:05.568100'),
(79, 'FoodAggregatorApp', '0015_alter_food_shop_alter_shop_city', '2023-12-15 15:48:05.573101'),
(80, 'FoodAggregatorApp', '0016_city_id_user', '2023-12-15 15:48:05.578978'),
(81, 'FoodAggregatorApp', '0017_rename_id_user_city_user', '2023-12-15 15:48:05.583980'),
(82, 'FoodAggregatorApp', '0018_food_image', '2023-12-15 15:48:05.590982'),
(83, 'FoodAggregatorApp', '0019_comments_alter_food_image', '2023-12-15 15:48:05.594982'),
(84, 'FoodAggregatorApp', '0020_alter_food_image', '2023-12-15 15:48:05.601984'),
(85, 'FoodAggregatorApp', '0021_alter_comments_table', '2023-12-15 15:48:05.605985'),
(86, 'FoodAggregatorApp', '0022_rename_comments_comment', '2023-12-15 15:48:05.612987'),
(87, 'FoodAggregatorApp', '0023_comment_food_id', '2023-12-15 15:48:05.617989'),
(88, 'FoodAggregatorApp', '0024_rename_food_id_comment_food', '2023-12-15 15:48:05.623782'),
(89, 'FoodAggregatorApp', '0025_food_description', '2023-12-15 15:48:05.628784'),
(90, 'FoodAggregatorApp', '0026_foodcategory_remove_food_shop_alter_comment_comment_and_more', '2023-12-15 15:48:05.634785'),
(91, 'FoodAggregatorApp', '0027_alter_foodcategory_table', '2023-12-15 15:48:05.639787'),
(92, 'FoodAggregatorApp', '0028_foodtype_product_remove_comment_food_and_more', '2023-12-15 15:48:05.645790'),
(93, 'FoodAggregatorApp', '0029_product_image_alter_foodtype_image', '2023-12-15 15:48:05.650791'),
(94, 'FoodAggregatorApp', '0030_product_ingredients', '2023-12-15 15:48:05.656792'),
(95, 'FoodAggregatorApp', '0031_alter_product_ingredients', '2023-12-15 15:48:05.661793'),
(96, 'FoodAggregatorApp', '0032_alter_product_name', '2023-12-15 15:48:05.668795'),
(97, 'FoodAggregatorApp', '0033_productdescription_instanceofproduct_and_more', '2023-12-15 15:48:05.672796'),
(98, 'FoodAggregatorApp', '0034_remove_foodcategory_id_alter_foodcategory_name', '2023-12-15 15:48:05.679062'),
(99, 'FoodAggregatorApp', '0035_remove_foodtype_foodcategory_foodcategory_id_and_more', '2023-12-15 15:48:05.684064'),
(100, 'FoodAggregatorApp', '0036_foodtype_foodcategory', '2023-12-15 15:48:05.691066'),
(101, 'FoodAggregatorApp', '0037_comment_mark', '2023-12-15 15:48:05.695066'),
(102, 'FoodAggregatorApp', '0038_alter_comment_mark', '2023-12-15 15:48:05.713070'),
(103, 'FoodAggregatorApp', '0039_alter_comment_mark', '2023-12-15 15:48:05.718071'),
(104, 'FoodAggregatorApp', '0040_alter_comment_mark', '2023-12-15 15:48:05.723072'),
(105, 'FoodAggregatorApp', '0041_alter_comment_mark', '2023-12-15 15:48:05.728073'),
(106, 'FoodAggregatorApp', '0042_remove_comment_nickname_comment_user_and_more', '2023-12-15 15:48:05.733074'),
(107, 'FoodAggregatorApp', '0043_remove_city_user_alter_comment_user', '2023-12-15 15:48:05.738077'),
(108, 'FoodAggregatorApp', '0044_alter_comment_user', '2023-12-15 15:48:05.742078'),
(109, 'FoodAggregatorApp', '0045_rename_opened_in_shop_founded_in_and_more', '2023-12-15 15:48:05.747079'),
(110, 'FoodAggregatorApp', '0046_remove_foodtype_image', '2023-12-15 15:48:05.752080'),
(111, 'FoodAggregatorApp', '0047_foodtype_image', '2023-12-15 15:48:05.757081'),
(112, 'FoodAggregatorApp', '0048_remove_foodtype_image', '2023-12-15 15:49:20.727659');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ty2z1wl5i8uj0hk6zwgcg9xdfprfym8', 'eyJwYXNzd29yZCI6IjEyMzQifQ:1rE24l:UhwBQ-hLeruITLxUb6AnEok8_BYQ9gSs8zkCJu1Y4GU', '2023-12-29 06:53:35.054950'),
('5bwulhytow9z16ctuqd46j9nyy8pqoxq', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJdvrdIOUHtR3gPbVb57m3dZmB7wo_6ODXjvS8HO7fQU2jfmvhFAahp-Ah2IzosXitrC2Ty8USeUmgQEknwAuShhCTLcY4XVBmEOz9AeAWODc:1qpPkj:2S7vA10G_XdxocSsvydx2y4LPKLwzRA3hbQLeewGb8M', '2023-10-22 09:07:09.596101'),
('5f2bk7mrzqkj6iq48ojes4mphect18x9', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJdvrdIOUHtR3gPbVb57m3dZmB7wo_6ODXjvS8HO7fQU2jfmvhFAahp-Ah2IzosXitrC2Ty8USeUmgQEknwAuShhCTLcY4XVBmEOz9AeAWODc:1qpSxH:utE-vdCbC3PommsMXEAS-xhXqXh7gErdkxtiyu7tlM4', '2023-10-22 12:32:19.077632'),
('5mqo0s02j6g14hopq8mfkn88bw1e29rr', 'eyJwYXNzd29yZCI6IjExMTEifQ:1rE2Le:8odPPkaKCVtTeZ6kNpLx7Uf8sz1ngCyQPJCBdc4quAo', '2023-12-29 07:11:02.400142'),
('e88fh2lvfmuplkio9ucel4mlbl6whzf9', '.eJxVjMsOwiAQRf-FtSHDs-DSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmem2el3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VtDEiSNNQ7IZEQlip6KoJgADWrwEqzODgRMxigE6bxUgorGaL2MTrP3B84KNvU:1rEOn5:tJt9HPN687evAABJ0E0gR9CjpfmFKYMaB1sME9zTD14', '2023-12-30 07:08:51.170027'),
('ml9s5u6ud4vzpl2s4bu2901vhsnyj2lw', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJdvrdIOUHtR3gPbVb57m3dZmB7wo_6ODXjvS8HO7fQU2jfmvhFAahp-Ah2IzosXitrC2Ty8USeUmgQEknwAuShhCTLcY4XVBmEOz9AeAWODc:1qee1v:UebcJu78REijEcnQ-D1E1JY8CWcIunDs5ViY3h4uZfQ', '2023-09-22 16:08:23.398712'),
('rt0jolvfxd98u9wibt4gd5gp300gtq4i', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJdvrdIOUHtR3gPbVb57m3dZmB7wo_6ODXjvS8HO7fQU2jfmvhFAahp-Ah2IzosXitrC2Ty8USeUmgQEknwAuShhCTLcY4XVBmEOz9AeAWODc:1qedvc:IgU53Z7qZaAS0X4LEM4wrQ9CVAWOY9Slo58-4CFD66I', '2023-09-22 16:01:52.908735'),
('w051euqkg13xvis3ss93f06kq2vxd9cs', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w2EYQapGkhKuzL-uzbpQrf3nHNfLKZtrXEbtMQZ2ZlJdvrdIOUHtR3gPbVb57m3dZmB7wo_6ODXjvS8HO7fQU2jfmvhFAahp-Ah2IzosXitrC2Ty8USeUmgQEknwAuShhCTLcY4XVBmEOz9AeAWODc:1qjxmv:UHULasYRUTWQD6zHW62T4B-FpPnAX8cq0zjKk814aSk', '2023-10-07 08:14:53.505461');

-- --------------------------------------------------------

--
-- Структура таблицы `food_category`
--

CREATE TABLE `food_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `food_category`
--

INSERT INTO `food_category` (`id`, `name`) VALUES
(1, 'Молочные продукты'),
(2, 'Выпечка'),
(3, 'Овощи'),
(4, 'Фрукты');

-- --------------------------------------------------------

--
-- Структура таблицы `food_type`
--

CREATE TABLE `food_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `foodCategory_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `food_type`
--

INSERT INTO `food_type` (`id`, `name`, `foodCategory_id`) VALUES
(1, 'Молоко', 1),
(2, 'Сыр', 1),
(3, 'Хлеб', 2),
(4, 'Масло сливочное', 1),
(5, 'Пироги', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `instance_of_product`
--

CREATE TABLE `instance_of_product` (
  `id` bigint(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `productDescription_id` bigint(20) NOT NULL,
  `shop_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `instance_of_product`
--

INSERT INTO `instance_of_product` (`id`, `price`, `productDescription_id`, `shop_id`) VALUES
(2, 140.00, 1, 5),
(3, 130.00, 1, 6),
(4, 115.00, 2, 5),
(5, 109.00, 2, 6),
(6, 79.00, 3, 5),
(7, 86.00, 3, 6),
(8, 99.00, 4, 6),
(9, 109.00, 4, 5),
(10, 85.00, 5, 6),
(11, 96.00, 5, 5),
(12, 50.00, 8, 6),
(13, 55.00, 8, 5),
(14, 69.00, 6, 6),
(15, 65.00, 6, 5),
(16, 77.00, 7, 6),
(17, 78.00, 7, 5),
(20, 42.00, 9, 5),
(21, 48.00, 9, 6),
(22, 81.00, 10, 6),
(23, 74.00, 10, 5),
(24, 80.00, 3, 5),
(25, 80.00, 7, 7),
(26, 100.00, 2, 7),
(27, 90.00, 10, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `product_description`
--

CREATE TABLE `product_description` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `weight` decimal(9,3) NOT NULL,
  `description` longtext DEFAULT NULL,
  `ingredients` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `foodType_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `product_description`
--

INSERT INTO `product_description` (`id`, `name`, `weight`, `description`, `ingredients`, `image`, `foodType_id`) VALUES
(1, 'Молоко \"Простоквашино\" 3.2% ультрапастеризованное', 0.950, 'Молоко \"\"Простоквашино\"\" ультрапастеризованное - вкусный и качественный продукт для всей семьи! Продукт обладает 5 гарантиями качества: 1. Из 100% натурального молока 2. Неизменно отличный вкус 3. Строгий контроль на антибиотики 4. Без консервантов 5. Без сухого молока и растительных жиров Молоко Простоквашино отлично дополнит ваш завтрак, его можно добавить в кофе или чай или выпить на ночь. Кроме того, оно отлично подойдет для готовки блинчиков, каш и множества других любимых домашних блюд.', 'Молоко нормализованное', 'images/products/vjkjrj.png', 1),
(2, 'Молоко \"Домик в деревне\" 3,2% ультрапастеризованное', 0.950, 'Молоко Домик в деревне ультрапастеризованное 3.2% 950г – 100% натуральный продукт, изготовленный из свежего коровьего молока с проверенных ферм. Не содержит консервантов и красителей. В процессе производства его подвергают ультрапастеризации – особому способу термической обработки, позволяющему сохранить все полезные качества, его первоначальный вкус и витаминно-минеральный состав. Молоко – это ценный источник белка, витаминов группы B, кальция, калия и фосфора. Его можно пить в самостоятельном', 'Молоко нормализованное', 'images/products/Молоко_Домик_в_деревнt_fDqrqp9.jpg', 1),
(3, 'Хлеб \"Рижский Хлеб\"', 0.300, 'Помимо приятного вкуса хлеба с кориандром и изюмом, это сочетание продуктов несет в себе пользу, т.к в высушенном виде изюм ни сколько не теряет пользы свежего винограда. Изюм содержит достаточное количество глюкозы и фруктозы, что является природным источником энергии для организма. Помимо этого в изюме содержится большое количество калия и магния, поэтому врачи рекомендую употреблять изюм в пищу людям, склонным к излишней тревожности и нервозности, а также людям, страдающим бессонницей.', 'Мука пшеничная хлебопекарная первого сорта, вода питьевая, сахар-песок, солод ржаной, мука ржаная хлебопекарная сеяная, соль поваренная пищевая, отруби пшеничные, кориандр.', 'images/products/Хлеб_Рижский_os21osN.jpg', 3),
(4, 'Молоко \"Это хорошо\" 3,2% восстановленное\nиз сухого молока ультрапастеризованное', 0.950, 'Ультрапастеризованное восстановленное молоко из сухого молока с массовой долей жира 3,2% - это прекрасный выбор для тех, кто ценит качество и вкус. Этот продукт обладает нежным сливочным вкусом и приятным ароматом, что делает его идеальным для приготовления различных блюд и напитков. Ультрапастеризация гарантирует сохранность полезных свойств молока и его безопасность для здоровья. Восстановленное молоко производится из высококачественного сухого молока, что обеспечивает его насыщенный вкус и кремовую текстуру. Этот продукт подходит для добавления в кофе, чай, какао, а также для приготовления каш, супов, соусов и других блюд. Ультрапастеризованное восстановленное молоко с массовой долей жира 3,2% – это отличный выбор для всей семьи.', 'Молоко сухое цельное, молоко сухое обезжиренное', 'images/products/Молоко_это_хорошо.jpg', 1),
(5, 'Молоко \"Село Зеленое\" ультрапастеризованное 2.5%', 0.950, 'Далеко-далеко там, где воздух наполнен свежестью утренней росы и родниковая вода несет приятную прохладу, есть дивное место под названием ’Село Зеленое’. Место это издавна славится своим полезным молоком. Его дают коровы, которые пасутся на бескрайних зеленых лугах и нежатся под ласковым солнцем. За каждой коровой в ’Селе Зеленом’ ухаживают с особой заботой, ведь только так можно получить по-настоящему вкусное молоко! Молоко включает в свой состав необходимые нам белки, жиры и углеводы и представляет наиболее ценный источник питательных нутриентов организма. Оно содержит незаменимые в нашем ежедневном рационе элементы такие как кальций, фосфор, калий, а также витамины А, В, D и др. Вырабатывается методом ультравысокотемпературной обработки, позволяющим увеличить срок его хранения и сохранить все полезные пищевые свойства молока. Готовый продукт разливают по картонным коробкам с удобными крышками. Асептическая упаковка создает надежную защиту от света, кислорода и бактерий.', 'Молоко цельное, молоко обезжиренное.', 'images/products/молоко_село_зеленое.jpg', 1),
(6, 'Батон \"Нарезной\" в нарезке, Коломенский', 0.400, 'Мягкий и ароматный батон, произведенный на густой опаре. Опара - это естественный процесс длительного брожения теста за счет веществ, содержащихся в самом зерне пшеницы. Собственные ферменты муки раскрывают вкусовые качества хлеба и придают ему особенный аромат, вкус, пышность и свежесть. Произведен из 100% натуральных ингредиентов, по рецептуре ГОСТ.', 'Мука пшеничная хлебопекарная высшего сорта, вода, сахар белый, масло подсолнечное, соль, дрожжи хлебопекарные. Продукт может содержать следы молочных продуктов, кунжута, горчицы', 'images/products/Хлеб_Коломенский.jpg', 3),
(7, 'Хлебец \"Энергия здоровья\" подовый с зернами и семенами нарезка ', 0.300, 'Хлеб “Хлебец Энергия Здоровья” - это уникальный продукт, созданный с любовью и заботой о вашем здоровье. В его состав входят только натуральные плодово-зерновые ингредиенты, которые придают хлебу неповторимый вкус и аромат.\r\n\r\nЭтот хлеб обладает особой энергетикой, ведь он создан из отборных зерен, которые были выращены на плодородных почвах с использованием экологичных методов. Благодаря этому, хлеб “Хлебец” не только вкусный, но и невероятно полезный для вашего здоровья.', 'Мука пшеничная хлебопекарная высшего сорта, вода питьевая, отруби пшеничные, семена подсолнечника, семена льна, глютен пшеничный, сахар, дрожжи хлебопекарные, соль (соль, агент антислеживающий Е536), масло подсолнечное нерафинированное, добавка комплексная пищевая (мука пшеничная, фермент микробного происхождения, антиокислитель – кислота аскорбиновая), зерно пшеницы плющеное, зерно ржи плющеное, зерно овсяное резаное, краситель - сахарный колер, стабилизатор – ацетат кальция.', 'images/products/Хлеб_Энергия_здоровья.jpg', 3),
(8, 'Хлеб \"Селяночка\" бородинский нарезка половина', 0.350, 'Хлеб Селяночка Бородинский - это ароматный, ржано-пшеничный нарезной хлебушек, изготовленный из высококачественной муки. В его состав входят рожь, пшеница, а также солод и кориандр, которые придают хлебу неповторимый вкус и насыщенный, темно-коричневый цвет.\r\n\r\nБлагодаря равномерной нарезке, хлеб легко и удобно использовать для приготовления бутербродов, сэндвичей или гренок. Он идеально сочетается с мясными и рыбными блюдами, а также с сырами и овощами.\r\n\r\nХлеб Селяночка Бородинский прекрасно подходит для тех, кто ценит традиции и вкус настоящей русской кухни. Этот продукт станет отличным дополнением к вашему столу и порадует вас и ваших близких своим насыщенным вкусом и ароматом.', 'Мука ржаная хлебопекарная обойная, вода питьевая, мука пшеничная хлебопекарная второго сорта, сахар белый кристаллический, солод ржаной ферментированный, патока, соль пищевая, кориандр, дрожжи хлебопекарные прессованные.', 'images/products/Хлеб_Селяночка.jpg', 3),
(9, 'Хлеб \"Красная Цена Украинский\" новый', 0.650, 'Хлеб “Красная цена Украинский” - это свежий, ароматный и воздушный хлебушек, изготовленный по традиционному украинскому рецепту. Этот продукт станет прекрасным дополнением к вашему столу, идеально сочетаясь с первыми и вторыми блюдами.\r\n\r\nВ основе хлеба - высококачественная ржаная мука, придающая ему неповторимый вкус и легкую кислинку. Благодаря использованию специальной технологии брожения, хлеб приобретает особую мягкость и нежность.\r\n\r\nУкрашен хлеб “Красная цена Украинский” элегантными колосьями из теста, символизирующими богатство и плодородие украинской земли. Золотистая корочка, хрустящая и тающая во рту, придает хлебу изысканный вид.', 'Мука ржаная хлебопекарная обойная, вода питьевая, мука пшеничная хлебопекарная второго сорта, сахар белый кристаллический, солод ржаной ферментированный, патока, соль пищевая, кориандр, дрожжи хлебопекарные прессованные.', 'images/products/Хлеб_Украинский.png', 3),
(10, 'Хлеб \"Хлебный Дом Тостовый\" пшеничный в нарезке', 0.500, 'Хлебный Дом Тостовый пшеничный в нарезке - это идеальное решение для тех, кто ценит свое время и любит наслаждаться свежестью и вкусом качественного хлеба. Изготовленный из лучших сортов пшеничной муки, он обладает мягким, воздушным мякишем и тонкой хрустящей корочкой. Благодаря специальной технологии нарезки, этот хлеб станет отличным дополнением к вашему столу. Он идеально подойдет для приготовления тостов на завтрак, а также будет отлично сочетаться с различными начинками и топпингами. Хлеб Хлебный Дом Тостовый Пшеничный в нарезке станет незаменимым элементом вашего стола и подарит вам и вашим близким истинное наслаждение вкусом и ароматом качественного хлеба.', 'Мука пшеничная хлебопекарная высшего сорта, вода питьевая, сахар, маргарин (рафинированные дезодорированные растительные масла в натуральном и отвержденном виде, вода, соль, эмульгаторы - моно-и диглицериды жирных кислот, эфиры полиглицерина и жирных кислот, ароматизатор \"Сливки\", регулятор кислотности - кислота лимонная, красители - аннато, куркумин), дрожжи хлебопекарные, молоко цельное сухое, соль, глютен пшеничный, улучшитель хлебопекарный (мука пшеничная, эмульгатор – стеароил-2-лактилат кальция, антиокислитель – кислота аскорбиновая, вещество для обработки муки Е920, ферменты), стабилизатор – ацетат кальция.', 'images/products/Хлеб_Хлебный_дом.png', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `head_office_address` varchar(100) NOT NULL,
  `founded_in` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`id`, `name`, `head_office_address`, `founded_in`) VALUES
(5, 'Пятерочка', 'Севастопольский проспект, 14к1', '1998-08-01'),
(6, 'Магнит', 'улица Судакова, 25', '1994-01-05'),
(7, 'Перекресток', 'Средняя Калитниковская ул., 28, стр. 4', '1995-04-02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Comment_product_id_d6589ca1_fk_product_description_id` (`product_id`),
  ADD KEY `Comment_user_id_1cbe86a2_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `food_category`
--
ALTER TABLE `food_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `food_type_foodCategory_id_82274d09_fk_food_category_id` (`foodCategory_id`);

--
-- Индексы таблицы `instance_of_product`
--
ALTER TABLE `instance_of_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instance_of_product_productDescription_i_7630afe6_fk_product_d` (`productDescription_id`),
  ADD KEY `instance_of_product_shop_id_9e12a604_fk_Shop_id` (`shop_id`);

--
-- Индексы таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_description_foodType_id_acb5c016_fk_food_type_id` (`foodType_id`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT для таблицы `food_category`
--
ALTER TABLE `food_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `food_type`
--
ALTER TABLE `food_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `instance_of_product`
--
ALTER TABLE `instance_of_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `product_description`
--
ALTER TABLE `product_description`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_product_id_d6589ca1_fk_product_description_id` FOREIGN KEY (`product_id`) REFERENCES `product_description` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `food_type`
--
ALTER TABLE `food_type`
  ADD CONSTRAINT `food_type_foodCategory_id_82274d09_fk_food_category_id` FOREIGN KEY (`foodCategory_id`) REFERENCES `food_category` (`id`);

--
-- Ограничения внешнего ключа таблицы `instance_of_product`
--
ALTER TABLE `instance_of_product`
  ADD CONSTRAINT `instance_of_product_productDescription_i_7630afe6_fk_product_d` FOREIGN KEY (`productDescription_id`) REFERENCES `product_description` (`id`),
  ADD CONSTRAINT `instance_of_product_shop_id_9e12a604_fk_Shop_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`);

--
-- Ограничения внешнего ключа таблицы `product_description`
--
ALTER TABLE `product_description`
  ADD CONSTRAINT `product_description_foodType_id_acb5c016_fk_food_type_id` FOREIGN KEY (`foodType_id`) REFERENCES `food_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
