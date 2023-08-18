-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2023 at 12:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naac`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `ac_id` int(11) NOT NULL,
  `name_of_add_on/crtificate_programs_offered` varchar(100) NOT NULL,
  `course_code(if_any)` varchar(100) NOT NULL,
  `year_of_offering` varchar(11) NOT NULL,
  `duration_of_course` varchar(100) NOT NULL,
  `number_of_students_enrolled_in_the_year` varchar(11) NOT NULL,
  `number_of_students_completing_the_course_in_the_year` varchar(11) NOT NULL,
  `number_of_times_offered_during_the_year` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`ac_id`, `name_of_add_on/crtificate_programs_offered`, `course_code(if_any)`, `year_of_offering`, `duration_of_course`, `number_of_students_enrolled_in_the_year`, `number_of_students_completing_the_course_in_the_year`, `number_of_times_offered_during_the_year`) VALUES
(1, 'abcs', '321', '2023', '4', '21', '23', '3'),
(2, 'abcs', '321', '2022', '4', '21', '23', '3');

-- --------------------------------------------------------

--
-- Table structure for table `academic_flexibiity`
--

CREATE TABLE `academic_flexibiity` (
  `acadefx_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `status_of_implementation_of_cbcss/elective_course_system` varchar(100) NOT NULL,
  `year_of_indroduction` varchar(10) NOT NULL,
  `link_of_the_relevent_document` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_flexibiity`
--

INSERT INTO `academic_flexibiity` (`acadefx_id`, `program_code`, `program_name`, `status_of_implementation_of_cbcss/elective_course_system`, `year_of_indroduction`, `link_of_the_relevent_document`) VALUES
(1, '1001', 'gggg', 'yes', '2023', ''),
(2, '1001', 'add', 'yes', '2023', 'http'),
(3, '1001', 'arts', 'yes', '2023', 'www.arts.com'),
(4, '456', 'arts', 'yes', '2023', 'www.arts.com'),
(5, '1001', 'arts', 'yes', '2023', 'www.arts.com'),
(6, '1001', 'arts', 'yes', '2023', 'http'),
(7, '1001', 'arts', 'yes', '2023', 'www.arts.com');

-- --------------------------------------------------------

--
-- Table structure for table `academic_flexibility2`
--

CREATE TABLE `academic_flexibility2` (
  `year` varchar(100) NOT NULL,
  `name_of_teachers_participated` varchar(100) NOT NULL,
  `name_of_the_body_in_which_full_time_teacher_participated` varchar(100) NOT NULL,
  `acadefx2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_flexibility2`
--

INSERT INTO `academic_flexibility2` (`year`, `name_of_teachers_participated`, `name_of_the_body_in_which_full_time_teacher_participated`, `acadefx2_id`) VALUES
('2023', 'nazri', 'aahaa', 1),
('2023', 'nazri', 'aahaa', 2),
('2023', 'nazri', 'aahaa', 3),
('2023', 'nazri', 'aahaa', 4),
('2023', 'nazri', 'aahaa', 5);

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `a_id` int(11) NOT NULL,
  `si_no` varchar(100) NOT NULL,
  `title_of_the_collaborative_activity` varchar(100) NOT NULL,
  `name_of_the_collabrating_agency_with_contact_details` varchar(100) NOT NULL,
  `name_of_the_participant` varchar(100) NOT NULL,
  `year_of_collaboration` int(11) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `nature_of_the_activity` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`a_id`, `si_no`, `title_of_the_collaborative_activity`, `name_of_the_collabrating_agency_with_contact_details`, `name_of_the_participant`, `year_of_collaboration`, `duration`, `nature_of_the_activity`, `description`) VALUES
(1, '1', 'asd', 'mnb', 'naz', 2023, '3', 'mnb', ''),
(2, '1', 'ddr', 'aaa', 'naz', 2023, '3', 'aaa', ''),
(3, '1', 'erhfr', 'cvb', 'wee', 2023, '3', 'cvb', ''),
(4, '1', 'dctdgyg', 'cvb', 'wfrf', 2003, '3', 'cvb', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `award_id` int(11) NOT NULL,
  `si_no` int(11) NOT NULL,
  `name_of_the_teacher` varchar(100) NOT NULL,
  `title_of_the_book/chapters_published` varchar(100) NOT NULL,
  `title_of_the_paper` varchar(100) NOT NULL,
  `title_of_the_proceeding_of_the_conference` varchar(100) NOT NULL,
  `name_of_the_unference` varchar(100) NOT NULL,
  `national/internationalyear_of_publication` varchar(100) NOT NULL,
  `ISBM/ISSN_number_of_proceedng` varchar(100) NOT NULL,
  `affiliating_institudes_at_the_time_of_publication` varchar(100) NOT NULL,
  `name_of_the_published` varchar(100) NOT NULL,
  `year_of_publication` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`award_id`, `si_no`, `name_of_the_teacher`, `title_of_the_book/chapters_published`, `title_of_the_paper`, `title_of_the_proceeding_of_the_conference`, `name_of_the_unference`, `national/internationalyear_of_publication`, `ISBM/ISSN_number_of_proceedng`, `affiliating_institudes_at_the_time_of_publication`, `name_of_the_published`, `year_of_publication`) VALUES
(1, 1, 'manu', 'manavi', 'pp', 'madavan', 'muhammad', '', '27658', 'rsmsndp', 'nazreena', 2023),
(2, 1, 'shabnaa', 'my love', 'pp', 'lastone', 'gopika', '', '27658', 'rsmsndp', 'nazreena', 2005),
(3, 1, 'shabnaa', 'my love', 'pp', 'nandana', 'gopika', '', 'sports', 'rsmsndp', 'nazreena', 2005),
(4, 1, 'shabnaa', 'my love', 'pp', 'nandana', 'gopika', '', 'sports', 'rsmsndp', 'nazreena', 2005),
(5, 1, 'shabna', 'my love', 'pp', 'nandana', 'gopika', '', 'sports', 'rsauscs', 'nazri', 2021),
(6, 1, 'chan', 'vvv', 'pp', 'bbb', 'avcx', '', 'isbn', 'ass', 'gopz', 2023),
(7, 1, 'shabnaa', '23', 'pp', 'nandana', 'gopika', '', '27658', 'rsmsndp', 'nazreena', 2005),
(8, 1, 'shabnaa', 'manavi', 'pp', 'nandana', 'gopika', '', 'naz', 'rsmsndp', 'nazreena', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `cbcs`
--

CREATE TABLE `cbcs` (
  `credit_id` int(11) NOT NULL,
  `program_code` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `year_of_introduction` varchar(100) NOT NULL,
  `status_of_implementation` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cbcss`
--

CREATE TABLE `cbcss` (
  `credit_id` int(11) NOT NULL,
  `program_code` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `year_of_introduction` varchar(100) NOT NULL,
  `status_of_implementation_of_cbcs/effective` varchar(100) NOT NULL,
  `year_of_implementation_of_cbcs/elective_course_system` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cbcss`
--

INSERT INTO `cbcss` (`credit_id`, `program_code`, `program_name`, `year_of_introduction`, `status_of_implementation_of_cbcs/effective`, `year_of_implementation_of_cbcs/elective_course_system`) VALUES
(1, '1001', 'arts', '2023', 'yes', '2023'),
(2, '1', '2', '2023', 'yes', '2022'),
(3, '2', 'add', '2023', 'yes', '2022'),
(4, '1001', 'arts', '2023', 'yes', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `circular_aspects`
--

CREATE TABLE `circular_aspects` (
  `c_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `name_of_the_teacher_participated` varchar(100) NOT NULL,
  `name_of_the_body_in_which_full_time_teacher_participated` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `circular_aspects`
--

INSERT INTO `circular_aspects` (`c_id`, `year`, `name_of_the_teacher_participated`, `name_of_the_body_in_which_full_time_teacher_participated`) VALUES
(1, 2023, 'nazri', 'aahaa'),
(2, 2023, 'nazri', 'aahaa'),
(3, 2023, 'ghghg', 'hgfjj'),
(4, 2023, 'bfhgj', 'fdhhj'),
(5, 2023, 'eff', 'edgg'),
(6, 2023, 'ddfggb', 'adfvg');

-- --------------------------------------------------------

--
-- Table structure for table `collaborative_activities`
--

CREATE TABLE `collaborative_activities` (
  `activity_id` int(11) NOT NULL,
  `title_of_collaborative_activity` varchar(100) NOT NULL,
  `name_of_collaborative_agency` varchar(100) NOT NULL,
  `name_of_the_participant` varchar(100) NOT NULL,
  `year_of_collaboration` varchar(100) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `curiculam_details`
--

CREATE TABLE `curiculam_details` (
  `p_id` int(11) NOT NULL,
  `program_Name` varchar(100) NOT NULL,
  `program_code` int(11) NOT NULL,
  `course_details` varchar(100) NOT NULL,
  `year_of_offering` int(11) NOT NULL,
  `student_details` varchar(100) NOT NULL,
  `name_of_cource` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curiculam_details`
--

INSERT INTO `curiculam_details` (`p_id`, `program_Name`, `program_code`, `course_details`, `year_of_offering`, `student_details`, `name_of_cource`) VALUES
(1, 'arts', 1001, '321', 2023, 'fnhghn', 'cvb'),
(2, 'bbb', 1, '22', 2022, 'gop', 'acs'),
(3, 'arts', 1001, '321', 2022, 'fgfjj', 'cvb');

-- --------------------------------------------------------

--
-- Table structure for table `curiculam_details1`
--

CREATE TABLE `curiculam_details1` (
  `p_id` int(11) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `program_code` int(11) NOT NULL,
  `course_details` varchar(100) NOT NULL,
  `year_of_offering` int(11) NOT NULL,
  `student_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `curiculam_details2`
--

CREATE TABLE `curiculam_details2` (
  `number` int(11) NOT NULL,
  `programe_name` varchar(100) NOT NULL,
  `programe_code` int(11) NOT NULL,
  `list` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `link_to_the_relevent_document` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curiculam_details2`
--

INSERT INTO `curiculam_details2` (`number`, `programe_name`, `programe_code`, `list`, `description`, `link_to_the_relevent_document`) VALUES
(1, 'dfh', 2, '23', '', 'http'),
(2, 'dfh', 2, '23', '', 'http'),
(3, 'dfh', 2, '23', '', 'http');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-05 11:27:51.030006'),
(2, 'auth', '0001_initial', '2023-03-05 11:28:06.706591'),
(3, 'admin', '0001_initial', '2023-03-05 11:28:11.609075'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-05 11:28:11.722497'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-05 11:28:11.970182'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-05 11:28:13.274970'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-05 11:28:14.419468'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-05 11:28:14.701062'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-05 11:28:14.784326'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-05 11:28:15.820758'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-05 11:28:15.866767'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-05 11:28:15.935435'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-05 11:28:16.099634'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-05 11:28:16.268768'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-05 11:28:16.448580'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-05 11:28:16.545412'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-05 11:28:18.333437'),
(18, 'sessions', '0001_initial', '2023-03-05 11:28:19.135876');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0hmj8x1i4b1ufb7d2jd6w9a67a6b79qt', 'eyJ1X2lkIjoyfQ:1pYmbU:nkDo2jk6RJfEmnmPUZOSrdFcuxUV0QHBgeM45Sp5-as', '2023-03-19 11:32:36.137887');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_number`
--

CREATE TABLE `enrollment_number` (
  `p_id` int(11) NOT NULL,
  `program_Name` varchar(100) NOT NULL,
  `program_code` int(11) NOT NULL,
  `number_of_seat_sanction` int(11) NOT NULL,
  `number_of_students_admited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment_number`
--

INSERT INTO `enrollment_number` (`p_id`, `program_Name`, `program_code`, `number_of_seat_sanction`, `number_of_students_admited`) VALUES
(1, 'vvv', 12, 20, 20),
(2, 'arts', 1001, 21, 20),
(3, 'arts', 1001, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_number1`
--

CREATE TABLE `enrollment_number1` (
  `p_name` int(11) NOT NULL,
  `programme_name` varchar(100) NOT NULL,
  `programme_code` int(11) NOT NULL,
  `number_of_seats_sanctioned` int(11) NOT NULL,
  `number_of_students_admitted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `extension_programs`
--

CREATE TABLE `extension_programs` (
  `program_id` int(11) NOT NULL,
  `name_of_activity` varchar(100) NOT NULL,
  `organisation_unit` varchar(100) NOT NULL,
  `name_of_the_schema` varchar(100) NOT NULL,
  `year_of_the_activity` varchar(100) NOT NULL,
  `number_of_students_participated_in_such_activities` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extension_programs`
--

INSERT INTO `extension_programs` (`program_id`, `name_of_activity`, `organisation_unit`, `name_of_the_schema`, `year_of_the_activity`, `number_of_students_participated_in_such_activities`, `description`) VALUES
(1, 'bbb', 'agency', 'ddd', '', '23', ''),
(2, 'bbb', 'agency', 'gop', '', '23', '');

-- --------------------------------------------------------

--
-- Table structure for table `extension_works`
--

CREATE TABLE `extension_works` (
  `e_id` int(11) NOT NULL,
  `name_of_the_activity` varchar(100) NOT NULL,
  `name_of_the_award/recognition` varchar(100) NOT NULL,
  `name_of_the_awarding_government/government_recognised_bodies` varchar(100) NOT NULL,
  `year_of_award` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extension_works`
--

INSERT INTO `extension_works` (`e_id`, `name_of_the_activity`, `name_of_the_award/recognition`, `name_of_the_awarding_government/government_recognised_bodies`, `year_of_award`) VALUES
(1, 'ffyty', 'vttddr', 'aaa', 2022),
(2, '23', 'vttddr', 'aaa', 2022),
(3, '23', 'vttddr', 'aaa', 2022),
(4, '23', 'vttddr', 'aaa', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'office', 'office', 'office', 1),
(2, 'department', 'department', 'department', 2),
(3, 'iqac', 'iqac', 'iqac', 3),
(4, 'principle', 'principle', 'principle', 4),
(5, 'teacher', 'teacher', 'teacher', 5),
(6, 'student_related', 'student_related', 'student_related', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mous`
--

CREATE TABLE `mous` (
  `m_id` int(11) NOT NULL,
  `organisation_with_which_mou_is_signed` varchar(100) NOT NULL,
  `name_of_the_institution/industry/corporate_house` varchar(100) NOT NULL,
  `year_of_mou` int(11) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `list_the_actual_activities_under_each_mou_year_wise` varchar(100) NOT NULL,
  `number_of_student/teachers_participated_under_mous` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mous`
--

INSERT INTO `mous` (`m_id`, `organisation_with_which_mou_is_signed`, `name_of_the_institution/industry/corporate_house`, `year_of_mou`, `duration`, `list_the_actual_activities_under_each_mou_year_wise`, `number_of_student/teachers_participated_under_mous`) VALUES
(1, 'ftfr', 'ddd', 2022, '', '23', '20'),
(2, 'ftfr', 'national', 2022, '', '23', '34'),
(3, 'ftfr', 'national', 2022, '', '23', '20');

-- --------------------------------------------------------

--
-- Table structure for table `number_of_teachers`
--

CREATE TABLE `number_of_teachers` (
  `n_id` int(11) NOT NULL,
  `name_of_full_time_teachers` varchar(100) NOT NULL,
  `PAN` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `year_of_appoiment` int(11) NOT NULL,
  `number_of_department` varchar(100) NOT NULL,
  `total_year_of_experience_in_the_same_instituation` varchar(100) NOT NULL,
  `number_of_appoiment` varchar(100) NOT NULL,
  `is_the_teacher_still_serving_the_institution` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `number_of_teachers`
--

INSERT INTO `number_of_teachers` (`n_id`, `name_of_full_time_teachers`, `PAN`, `description`, `year_of_appoiment`, `number_of_department`, `total_year_of_experience_in_the_same_instituation`, `number_of_appoiment`, `is_the_teacher_still_serving_the_institution`) VALUES
(1, '12', 'arts', '', 2022, '22', '4', '23', 'yes'),
(2, '12', 'arts', '', 2022, '22', '4', '23', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `research_id` int(11) NOT NULL,
  `name_of_the_project/endownments,chairs` varchar(100) NOT NULL,
  `name_of_the_principle_investigator/coinvestigator` varchar(100) NOT NULL,
  `department_of_principle_investigator` varchar(100) NOT NULL,
  `amount_sanctioned` int(11) NOT NULL,
  `name_of_the_funding_agency` varchar(100) NOT NULL,
  `type(government/nongovernment)` varchar(100) NOT NULL,
  `year_of_award` varchar(100) NOT NULL,
  `duration_of_project` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`research_id`, `name_of_the_project/endownments,chairs`, `name_of_the_principle_investigator/coinvestigator`, `department_of_principle_investigator`, `amount_sanctioned`, `name_of_the_funding_agency`, `type(government/nongovernment)`, `year_of_award`, `duration_of_project`) VALUES
(1, 'sports', 'gopika', 'shabna', 1000000, 'nazri', '', '2023', '3'),
(2, 'sports', 'gopika', '', 1000000, 'nazri', 'government', '2023', '3'),
(3, 'aaa', 'aaaf', 'eee', 1000, 'www', 'government', '2022', '3'),
(4, 'naz', 'gopika', 'shabna', 1000000, 'nazri', 'government', '2023', '3');

-- --------------------------------------------------------

--
-- Table structure for table `seat_categories`
--

CREATE TABLE `seat_categories` (
  `seats_no` int(11) NOT NULL,
  `year` varchar(100) NOT NULL,
  `sc` varchar(100) NOT NULL,
  `st` varchar(100) NOT NULL,
  `obc` varchar(100) NOT NULL,
  `other` varchar(100) NOT NULL,
  `gen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat_categories`
--

INSERT INTO `seat_categories` (`seats_no`, `year`, `sc`, `st`, `obc`, `other`, `gen`) VALUES
(1, '', '34', '22', '13', '10', '11'),
(2, '2023', '34', '22', '13', '10', '11'),
(3, '2023', '34', '22', '13', '10', '11'),
(4, '2023', '34', '22', '13', '10', '11'),
(5, '2023', '34', '22', '13', '10', '11'),
(6, '2023', '34', '22', '13', '10', '11'),
(7, '2023', '34', '22', '13', '10', '11');

-- --------------------------------------------------------

--
-- Table structure for table `student_learning`
--

CREATE TABLE `student_learning` (
  `sl_id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `program_code` varchar(100) NOT NULL,
  `program_name` varchar(100) NOT NULL,
  `number_of_students_appeared_in_the_final_year_examination` int(11) NOT NULL,
  `number_of_students_passed_in_final_year_examination` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_learning`
--

INSERT INTO `student_learning` (`sl_id`, `description`, `year`, `program_code`, `program_name`, `number_of_students_appeared_in_the_final_year_examination`, `number_of_students_passed_in_final_year_examination`) VALUES
(1, '', 2022, '1', 'qq', 20, 15),
(2, '', 2022, '1001', 'arts', 20, 23),
(3, '', 2022, '1001', 'arts', 20, 15);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_quality1`
--

CREATE TABLE `teacher_quality1` (
  `t_id` int(11) NOT NULL,
  `name_of_full_time_teacher` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `reasearch_guide` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `is_the_teacher_still_serving` varchar(100) NOT NULL,
  `name_of_the_scholar` varchar(100) NOT NULL,
  `year_of_registration_of_the_scholar` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_quality1`
--

INSERT INTO `teacher_quality1` (`t_id`, `name_of_full_time_teacher`, `qualification`, `reasearch_guide`, `year`, `is_the_teacher_still_serving`, `name_of_the_scholar`, `year_of_registration_of_the_scholar`, `title`) VALUES
(1, 'shabnaa', '2022', 'ph.d', 2022, 'yes', 'gop', 2023, 'aaab'),
(2, 'shabnaa', 'phd', 'ph.d', 2022, 'yes', 'gop', 2023, 'aaab');

-- --------------------------------------------------------

--
-- Table structure for table `teaching1`
--

CREATE TABLE `teaching1` (
  `t_id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teaching_quality`
--

CREATE TABLE `teaching_quality` (
  `tq_id` int(11) NOT NULL,
  `name_of_full_time_teachers` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `reserch_guides` varchar(100) NOT NULL,
  `year_of_reserch_guides` varchar(100) NOT NULL,
  `is_the_teacher_still_serving_the_institution` varchar(100) NOT NULL,
  `name_of_the_scholor` varchar(100) NOT NULL,
  `year_of_registeration_of_the_scholor` varchar(100) NOT NULL,
  `title_of_the_thesis_for_scholar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching_quality`
--

INSERT INTO `teaching_quality` (`tq_id`, `name_of_full_time_teachers`, `qualification`, `reserch_guides`, `year_of_reserch_guides`, `is_the_teacher_still_serving_the_institution`, `name_of_the_scholor`, `year_of_registeration_of_the_scholor`, `title_of_the_thesis_for_scholar`) VALUES
(1, 'ggg', 'phd', 'dm', '2022', 'yes', 'eee', '2023', 'aaadf'),
(2, 'ggg', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(3, 'ggg', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(4, 'ggg', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(5, 'ggg', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(6, 'phd', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(7, 'phd', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf'),
(8, 'phd', 'phd', 'ph.D', '2022', 'yes', 'gop', '2023', 'aaadf');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `workshop_id` int(11) NOT NULL,
  `name_of_the_workshop/seminar` varchar(100) NOT NULL,
  `number_of_participants` int(11) NOT NULL,
  `date_from_to` datetime NOT NULL,
  `description` varchar(100) NOT NULL,
  `link_to_the_activity_report_on_the_website` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `name_of_the_workshop/seminar`, `number_of_participants`, `date_from_to`, `description`, `link_to_the_activity_report_on_the_website`, `year`) VALUES
(1, 'qqq', 23, '2023-05-13 00:00:00', '', 'http', '25'),
(2, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(3, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(4, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(5, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(6, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(7, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(8, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25'),
(9, 'qqq', 3, '2023-05-13 00:00:00', '', 'http', '25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`ac_id`);

--
-- Indexes for table `academic_flexibiity`
--
ALTER TABLE `academic_flexibiity`
  ADD PRIMARY KEY (`acadefx_id`);

--
-- Indexes for table `academic_flexibility2`
--
ALTER TABLE `academic_flexibility2`
  ADD PRIMARY KEY (`acadefx2_id`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `cbcs`
--
ALTER TABLE `cbcs`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `cbcss`
--
ALTER TABLE `cbcss`
  ADD PRIMARY KEY (`credit_id`);

--
-- Indexes for table `circular_aspects`
--
ALTER TABLE `circular_aspects`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `collaborative_activities`
--
ALTER TABLE `collaborative_activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `curiculam_details`
--
ALTER TABLE `curiculam_details`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `curiculam_details1`
--
ALTER TABLE `curiculam_details1`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `curiculam_details2`
--
ALTER TABLE `curiculam_details2`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `enrollment_number`
--
ALTER TABLE `enrollment_number`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `enrollment_number1`
--
ALTER TABLE `enrollment_number1`
  ADD PRIMARY KEY (`p_name`);

--
-- Indexes for table `extension_programs`
--
ALTER TABLE `extension_programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `extension_works`
--
ALTER TABLE `extension_works`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `mous`
--
ALTER TABLE `mous`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `number_of_teachers`
--
ALTER TABLE `number_of_teachers`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`research_id`);

--
-- Indexes for table `seat_categories`
--
ALTER TABLE `seat_categories`
  ADD PRIMARY KEY (`seats_no`);

--
-- Indexes for table `student_learning`
--
ALTER TABLE `student_learning`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `teacher_quality1`
--
ALTER TABLE `teacher_quality1`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `teaching1`
--
ALTER TABLE `teaching1`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `teaching_quality`
--
ALTER TABLE `teaching_quality`
  ADD PRIMARY KEY (`tq_id`) USING BTREE;

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academic_flexibiity`
--
ALTER TABLE `academic_flexibiity`
  MODIFY `acadefx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `academic_flexibility2`
--
ALTER TABLE `academic_flexibility2`
  MODIFY `acadefx2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cbcs`
--
ALTER TABLE `cbcs`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbcss`
--
ALTER TABLE `cbcss`
  MODIFY `credit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `circular_aspects`
--
ALTER TABLE `circular_aspects`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `collaborative_activities`
--
ALTER TABLE `collaborative_activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curiculam_details`
--
ALTER TABLE `curiculam_details`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curiculam_details1`
--
ALTER TABLE `curiculam_details1`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curiculam_details2`
--
ALTER TABLE `curiculam_details2`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enrollment_number`
--
ALTER TABLE `enrollment_number`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrollment_number1`
--
ALTER TABLE `enrollment_number1`
  MODIFY `p_name` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extension_programs`
--
ALTER TABLE `extension_programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `extension_works`
--
ALTER TABLE `extension_works`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mous`
--
ALTER TABLE `mous`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `number_of_teachers`
--
ALTER TABLE `number_of_teachers`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `research_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seat_categories`
--
ALTER TABLE `seat_categories`
  MODIFY `seats_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_learning`
--
ALTER TABLE `student_learning`
  MODIFY `sl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_quality1`
--
ALTER TABLE `teacher_quality1`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teaching1`
--
ALTER TABLE `teaching1`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teaching_quality`
--
ALTER TABLE `teaching_quality`
  MODIFY `tq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
