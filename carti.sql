-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 01:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carti`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(8) NOT NULL,
  `titlu` varchar(255) NOT NULL,
  `autor` varchar(120) NOT NULL,
  `gen` varchar(100) NOT NULL,
  `an_publicare` int(4) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `descriere` text NOT NULL,
  `pret` float NOT NULL,
  `stoc` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `titlu`, `autor`, `gen`, `an_publicare`, `isbn`, `descriere`, `pret`, `stoc`, `created_at`, `updated_at`) VALUES
(31, 'Cronicile din Narnia: Leul, Vrăjitoarea și dulapul', 'C.S. Lewis', 'Fiction', 1950, '2147483647', 'O aventură fantastică în lumea magică a lui Narnia.', 14.99, 30, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(32, 'Anna Karenina', 'Lev Tolstoi', 'Classic', 1877, '2147483647', 'O poveste tragică de iubire și moralitate în Rusia țaristă.', 2023.99, 25, '2023-12-05 05:55:21', '2023-12-07 11:55:35'),
(33, 'The Alchemist', 'Paulo Coelho', 'Fiction', 1988, '2147483647', 'O călătorie de autodescoperire și înțelegere a semnificației vieții.', 12.75, 20, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(34, 'The Chronicles of Sherlock Holmes', 'Arthur Conan Doyle', 'Mystery', 1892, '2147483647', 'Povești captivante cu celebrul detectiv Sherlock Holmes.', 22.99, 15, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(35, 'The Hunger Games', 'Suzanne Collins', 'Science Fi', 2008, '2147483647', 'Un viitor distopic cu lupte pentru supraviețuire într-o arenă mortală.', 18.25, 40, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(36, 'The Road', 'Cormac McCarthy', 'Post-Apoca', 2006, '2147483647', 'O călătorie într-un peisaj post-apocaliptic și o relație între tată și fiu.', 28, 10, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(37, 'Brave New World', 'Aldous Huxley', 'Dystopian ', 1932, '2147483647', 'O privire într-un viitor controlat genetic și social.', 21.5, 18, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(38, 'The Fault in Our Stars', 'John Green', 'Young Adul', 2012, '2147483647', 'O poveste de dragoste emoționantă dintre doi adolescenți cu cancer.', 19.99, 22, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(39, 'The Girl on the Train', 'Paula Hawkins', 'Mystery', 2015, '2147483647', 'Un thriller psihologic despre dispariția unei femei și secrete întunecate.', 25.99, 12, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(40, 'The Great Expectations', 'Charles Dickens', 'Classic', 1860, '2147483647', 'O poveste de dezvoltare personală a unui orfan numit Pip.', 17, 28, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(41, 'The Handmaid\'s Tale', 'Margaret Atwood', 'Dystopian ', 1985, '2147483647', 'O lume distopică în care femeile sunt tratate ca proprietate.', 16.5, 30, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(42, 'The Kite Runner', 'Khaled Hosseini', 'Fiction', 2003, '2147483647', 'O poveste emoționantă despre prietenie și vinovăție în Afganistan.', 20.99, 25, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(43, 'The Martian', 'Andy Weir', 'Science Fi', 2011, '2147483647', 'Un astronaut rămas singur pe Marte luptă pentru supraviețuire.', 24.75, 20, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(44, 'The Catch-22', 'Joseph Heller', 'Satire', 1961, '2147483647', 'O satiră asupra absurdității războiului și a birocrației militare.', 18.25, 15, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(45, 'The Silence of the Lambs', 'Thomas Harris', 'Thriller', 1988, '2147483647', 'Un agent FBI colaborează cu un criminal în serie pentru a prinde altul.', 22.99, 40, '2023-12-05 05:55:21', '2023-12-05 05:55:21'),
(46, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic Fic', 1890, '2147483647', 'Un portret înfățișează corupția morală a unui bărbat în Londra victoriană.', 1900, 10, '2023-12-05 05:55:21', '2023-12-07 11:56:01'),
(47, 'The Odyssey', 'Homer', 'Epic Poetr', -700, '2147483647', 'Unul dintre cele mai vechi poeme epice, urmărind aventurile lui Ulise în drumul său spre casă.', 21.5, 18, '2023-12-05 05:55:21', '2023-12-05 05:55:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
