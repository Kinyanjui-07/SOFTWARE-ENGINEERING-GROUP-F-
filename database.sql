

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `c++issuetracker`
--

CREATE TABLE `c++issuetracker` (
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(10) DEFAULT NULL,
  `user_username` varchar(10) DEFAULT NULL,
  `user_password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c++issuetracker`
--

INSERT INTO `c++issuetracker` (`user_id`, `user_name`, `user_username`, `user_password`) VALUES
(1470, 'Tonito', 'mzoefu11', 'Password'),
(2580, 'Bobby', 'tonito11', 'Password'),
(3690, 'Nick', 'nick-07', 'Password'),
(11730, 'Nicko', 'nicko-07', 'Password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c++issuetracker`
--
ALTER TABLE `c++issuetracker`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
