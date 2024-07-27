
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `admin_pswd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `admin` (`admin_id`, `email`, `admin_pswd`) VALUES
(1, 'admin@gmail.com', 'admin');



CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `booking_date` varchar(500) NOT NULL,
  `booking_time` varchar(500) NOT NULL,
  `permission` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `consulting_schedule` (
  `consulting_id` int(11) NOT NULL,
  `Day_Time1` text NOT NULL,
  `Day_Time2` text NOT NULL,
  `Day_Time3` text NOT NULL,
  `Day_Time4` text NOT NULL,
  `Day_Time5` text NOT NULL,
  `Day_Time6` text NOT NULL,
  `Day_Time7` text NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `consulting_schedule` (`consulting_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(33, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 1),
(34, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 2),
(35, 'Saturday 6:30 PM To 12:00 PMSaturday 12:30 AM To 5:30 AM', 'Sunday 6:30 PM To 12:00 PMSunday 12:30 AM To 5:30 AM', 'Monday 6:30 PM To 12:00 PMMonday 12:30 AM To 5:30 AM', 'Tuesday 6:30 PM To 12:00 PMTuesday 12:30 AM To 5:30 AM', 'Wednesday 6:30 PM To 12:00 PMWednesday 12:30 AM To 5:30 AM', 'Thursday 6:30 PM To 12:00 PMThursday 12:30 AM To 5:30 AM', 'Friday 6:30 PM To 12:00 PMFriday 12:30 AM To 5:30 AM', 3);



CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `specialist` varchar(500) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `bmdc_reg_num` int(11) NOT NULL,
  `address` text NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `permission` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `doctor` (`id`, `f_name`, `l_name`, `email`, `contact`, `specialist`, `qualification`, `DOB`, `gender`, `bmdc_reg_num`, `address`, `pswd`, `date`, `permission`) VALUES
(1, 'Dr. Ravi', ' kumar', 'ravikumar@gmail.com', '9660015197', 'medicine', 'MBBS, MRCP ( UK ) , ECFMG ( USA ) ,', '1968-10-10', 'male', 56867, 'vijayawada', '123456789', '0000-00-00', 'Approved'),
(2, 'Dr. Mohammad', ' Nadeem', 'nadeem@gmail.com', '7119118215', 'medicine', 'MBBS, DTCD, FCPS Associate Professor & Head of Department', '1965-08-26', 'male', 56766, 'Hyderabad', '123456789', '2018-09-08', 'Approved'),
(3, 'Dr. Sohel', ' Mohammad', 'sohelmohammad@gmail.com', '7173516313', 'medicine', 'MBBS, FCPS Associate Professor', '1966-06-23', 'male', 56767, 'Guntur', '123456789', '2018-09-08', 'Approved'),
(4, 'Dr. Vinay', ' Kumar', 'vinaykumar@gmail.com', '7173851631', 'Dentist', 'MBBS,FCPS Designation', '1968-09-28', 'male', 56768, 'Vijayawada', '123456789', '2018-09-08', 'Approved'),
(5, 'Dr. Krishna', ' Reddy', 'krishnareddy@gmail.com', '7729350383', 'Dentist', 'MBBS, FCPS Associate Professor', '1969-09-29', 'male', 56769, 'Vizag', '123456789', '2018-09-08', 'Approved'),
(6, 'Dr. Ramesh', ' Rao', 'rameshrao@gmail.com', '8715024100', 'Dentist', 'MBBS, FCPS Associate Professor', '1970-09-01', 'male', 56770, 'Vijayawada', '123456789', '2018-09-08', 'Approved'),
(7, 'Dr. Amit', ' Kapoor', 'amitkapoor@gmail.com', '9728401661', 'cardiologist', 'MBBS, MS (Cardiology)', '1970-09-02', 'male', 56771, 'Apolo Hospitals - Hyderabad', '123456789', '2018-09-08', 'Approved'),
(8, 'Dr. Kiran', ' Chowdhary', 'kiranchowdhary@gmail.com', '8711701234', 'cardiologist', 'MBBS,MS(Cardiology)', '1972-09-03', 'male', 56772, 'Vizag', '123456789', '2018-09-08', 'Approved'),
(9, 'Dr. Rama', ' Rao', 'ramarao@gmail.com', '9711701234', 'cardiologist', 'Qualification : MBBS, MS, FICS Designation: Professor & Director', '1973-09-08', 'male', 56772, 'Vizianagaram', '123456789', '2018-09-08', 'Approved');



CREATE TABLE `schedule` (
  `s_id` int(11) NOT NULL,
  `Day_Time1` varchar(500) NOT NULL,
  `Day_Time2` varchar(500) NOT NULL,
  `Day_Time3` varchar(500) NOT NULL,
  `Day_Time4` varchar(500) NOT NULL,
  `Day_Time5` varchar(5000) NOT NULL,
  `Day_Time6` varchar(5000) NOT NULL,
  `Day_Time7` varchar(5000) NOT NULL,
  `d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`s_id`, `Day_Time1`, `Day_Time2`, `Day_Time3`, `Day_Time4`, `Day_Time5`, `Day_Time6`, `Day_Time7`, `d_id`) VALUES
(21, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 1),
(22, 'Saturday 6:00 AM To 12:00 AM', '', '', '', '', '', '', 2),
(23, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 3),
(24, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 4),
(25, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 5),
(26, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 6),
(27, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 7),
(28, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 8),
(29, 'Saturday 9:00 AM To 9:00 PM', 'Sunday 9:00 AM To 9:00 PM', 'Monday 9:00 AM To 9:00 PM', 'Tuesday 9:00 AM To 9:00 PM', 'Wednesday 9:00 AM To 9:00 PM', 'Thursday 9:00 AM To 9:00 PM', 'Friday 9:00 AM To 9:00 PM', 9);



CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `f_name` varchar(500) NOT NULL,
  `l_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `address` text NOT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(500) NOT NULL,
  `maritialstatus` varchar(500) NOT NULL,
  `pswd` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `sid` (`sid`);
--
-- Indexes for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD PRIMARY KEY (`consulting_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  MODIFY `consulting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;


--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `schedule` (`s_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consulting_schedule`
--
ALTER TABLE `consulting_schedule`
  ADD CONSTRAINT `consulting_schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `doctor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
