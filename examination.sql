-- phpMyAdmin SQL Dump
-- version 2.11.2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 12, 2024 at 06:43 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `cour`
--

CREATE TABLE `cour` (
  `courseid` int(11) NOT NULL,
  `courseco` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  `sem` varchar(255) default NULL,
  `year` int(11) default NULL,
  `program` varchar(255) default NULL,
  PRIMARY KEY  (`courseid`),
  UNIQUE KEY `courseco` (`courseco`),
  UNIQUE KEY `course` (`course`),
  KEY `sem` (`sem`),
  KEY `year` (`year`),
  KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cour`
--

INSERT INTO `cour` (`courseid`, `courseco`, `course`, `sem`, `year`, `program`) VALUES
(1, 'CS11070-Operating System With UNIX', 'Operating System With UNIX', '2', 1, 'BCA'),
(2, 'CS11010-ICOA', 'ICOA', '1', 1, 'BCA'),
(3, 'CS11030-Programming Using C', 'Programming Using C', '1', 1, 'BCA'),
(4, 'CS11050-Programming Using C++', 'Programming Using C++', '2', 1, 'BCA'),
(5, 'CS11090-Data Structure', 'Data Structure', '3', 2, 'BCA'),
(6, 'CS11130-Programming Using JAVA', 'Programming Using JAVA', '3', 2, 'BCA'),
(7, 'CS11160-Programming Using Python', 'Programming Using Python', '4', 2, 'BCA'),
(8, 'CS51020-Internet Of Things', 'Internet Of Things', '4', 2, 'BCA'),
(9, 'CS11210-Computer Graphics', 'Computer Graphics', '5', 3, 'BCA'),
(10, 'CS11220-Web Development Using PHP', 'Web Development Using PHP', '5', 3, 'BCA'),
(11, 'CS14090-Cyber Security', 'Cyber Security', '6', 3, 'BCA'),
(12, 'CS14110-Digital Marketing', 'Digital Marketing', '6', 3, 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `exam_date_time` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_result`
--

INSERT INTO `exam_result` (`username`, `email`, `course`, `exam_date_time`, `score`, `sem`, `year`, `program`, `date`, `time`) VALUES
('2112186.manjari.mali@vvwusurat.ac.in', '2112186.manjari.mali@vvwusurat.ac.in', '', '', '40', '', '', '', '2024-03-27', '14:00:57'),
('2112186.manjari.mali@vvwusurat.ac.in', '2112186.manjari.mali@vvwusurat.ac.in', '', '', '60', '', '', '', '2024-03-27', '14:05:47'),
('2112186.manjari.mali@vvwusurat.ac.in', '2112186.manjari.mali@vvwusurat.ac.in', '', '', '30', '', '', '', '2024-03-27', '14:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `generate_paper`
--

CREATE TABLE `generate_paper` (
  `paper_id` int(11) NOT NULL,
  `date_time` datetime default NULL,
  `courseco` varchar(255) default NULL,
  `courseid` int(11) default NULL,
  PRIMARY KEY  (`paper_id`),
  KEY `courseco` (`courseco`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generate_paper`
--


-- --------------------------------------------------------

--
-- Table structure for table `give_exam`
--

CREATE TABLE `give_exam` (
  `exstuid` int(11) NOT NULL,
  `paperid` int(11) default NULL,
  `rollno` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `select_ans` varchar(1) default NULL,
  PRIMARY KEY  (`exstuid`),
  KEY `paperid` (`paperid`),
  KEY `rollno` (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `give_exam`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_adm`
--

CREATE TABLE `login_adm` (
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_adm`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_fac`
--

CREATE TABLE `login_fac` (
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_fac`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_stu`
--

CREATE TABLE `login_stu` (
  `email` varchar(255) default NULL,
  `password` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_stu`
--


-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE `pro` (
  `pid` int(11) NOT NULL,
  `program` varchar(255) default NULL,
  `dept` varchar(255) default NULL,
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`pid`, `program`, `dept`) VALUES
(1, 'BCA', 'Science and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `qbc10`
--

CREATE TABLE `qbc10` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbc10`
--

INSERT INTO `qbc10` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 10, 'Full form of PHP is?', 'Preprocessor Home Page', 'Pretext Hypertext Processor', 'Hypertext Preprocessor', 'Personal Hyper Processor', 'optionc'),
(2, 10, ' What is PHP?', ' PHP is an open-source programming language', 'PHP is used to develop dynamic and interactive websites', 'PHP is a server-side scripting language', 'All of the mentioned', 'optiond'),
(3, 10, 'Who is the father of PHP?', 'Drek Kolkevi', 'Rasmus Lerdorf', 'Willam Makepiece', 'List Barely', 'optionb'),
(4, 10, 'Which of the following is the correct syntax to write a PHP code?', '<?php ?>', '< php >', '< ? php >', '<? ?>', 'optionc'),
(5, 10, 'Which of the following is the correct way to add a comment in PHP code?', ' #', '<!--     -->', '/* */', '//', 'optionb'),
(6, 10, 'Which of the following is the default file extension of PHP files?', '.php', '.ph', '.xml', '.html', 'optiona'),
(7, 10, 'How to define a function in PHP?', 'functionName(parameters) {function body}', 'function {function body}', 'function functionName(parameters) {function body}', 'data type functionName(parameters) {function body}', 'optionc'),
(8, 10, ' Which is the right way of declaring a variable in PHP?', ' $3hello', '$_hello', '$this', '$5_Hello', 'optionb'),
(9, 10, 'Which of the following web servers are required to run the PHP script?', 'LAMP', 'WAMP', 'XAMP', 'Any of the mentioned', 'optiond'),
(10, 10, 'What does PDO stand for?', 'PHP Database Orientation', ' PHP Data Orientation', 'PHP Data Object', 'PHP Database Object', 'optionc'),
(11, 10, 'Which of the looping statements is/are supported by PHP?                  i) for loop\nii) while loop\niii) do-while loop\niv) foreach loop', 'Only iv)', 'i) and ii)', 'i), ii) and iii)', 'i), ii), iii) and iv)', 'optiond'),
(12, 10, 'Which of the below statements is equivalent to $add += $add?', '$add = $add', '$add = $add +$add', '$add = $add + 1', ' $add = $add + $add + 1', 'optionb'),
(13, 10, 'If $a = 12 what will be returned when ($a == 12) ? 5 : 1 is executed?', '1', '5', '12', 'error', 'optionb'),
(14, 10, 'Which of the following is a correct way to start a PHP script?', '<?php', '<script>', '<php>', '<!--?php', 'optiona');

-- --------------------------------------------------------

--
-- Table structure for table `qbc11`
--

CREATE TABLE `qbc11` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbc11`
--

INSERT INTO `qbc11` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 11, 'What does VPN stand for?', 'Virtual Personal Network', 'Virtual Private Network', 'Virtual Protected Network', 'Virtual Public Network', 'optionb'),
(2, 11, 'What is the primary purpose of a firewall in network security?', 'To detect and remove malware', 'To prevent unauthorized access', 'To encrypt network traffic', 'To monitor network performance', 'optionb'),
(3, 11, 'Which of the following is NOT considered a strong password?', 'Password123', '[email protected]', 'P@ssw0rd!', 'Tr0ub4dor&3', 'optiona'),
(4, 11, 'What is the purpose of encryption in data security?', 'To compress data', 'To hide data', 'To secure data', 'To authenticate data', 'optionc'),
(5, 11, 'What is the main objective of phishing attacks?', 'To steal sensitive information', 'To spread viruses', 'To overload a server', 'To disable network services', 'optiona'),
(6, 11, 'Which of the following is NOT a type of malware?', 'Virus', 'Trojan', 'Spyware', 'Firewall', 'optiond'),
(7, 11, 'What is the purpose of biometric authentication?', 'To use a physical token for authentication', 'To verify identity based on unique biological traits', 'To use a password for authentication', 'To verify identity based on social media profiles', 'optionb'),
(8, 11, 'Which protocol is commonly used for secure communication over the internet?', 'HTTP', 'FTP', 'SMTP', 'HTTPS', 'optiond'),
(9, 11, 'What is the main purpose of a vulnerability assessment?', 'To simulate cyber attacks', 'To identify security weaknesses', 'To encrypt sensitive data', 'To monitor network traffic', 'optionb'),
(10, 11, 'What is a DDoS attack?', 'Distributed Denial of Security', 'Decentralized Denial of Service', 'Distributed Denial of Service', 'Decentralized Denial of Security', 'optionc'),
(11, 11, 'What is the purpose of a security patch?', 'To fix security vulnerabilities', 'To enhance system performance', 'To upgrade hardware components', 'To optimize network bandwidth', 'optiona'),
(12, 11, 'What is the primary goal of network segmentation?', 'To isolate sensitive data', 'To increase network speed', 'To reduce network complexity', 'To improve data encryption', 'optiona'),
(13, 11, 'Which of the following is NOT a common cyber attack vector?', 'Email attachments', 'Social media profiles', 'Malicious websites', 'USB devices', 'optionb'),
(14, 11, 'What is the purpose of multi-factor authentication (MFA)?', 'To use multiple passwords for authentication', 'To verify identity using multiple methods', 'To create multiple user accounts', 'To encrypt multiple files simultaneously', 'optionb'),
(15, 11, 'What does the term "phishing" refer to in cyber security?', 'Sending unsolicited emails', 'Stealing credit card information', 'Social engineering attacks', 'Spoofing IP addresses', 'optionc'),
(16, 11, 'Which encryption algorithm is commonly used for secure email communication?', 'AES', 'RSA', 'DES', 'SHA', 'optionb'),
(17, 11, 'What is the purpose of a security incident response plan?', 'To prevent security incidents', 'To respond effectively to security breaches', 'To create secure passwords', 'To encrypt sensitive data', 'optionb'),
(18, 11, 'What is the primary function of an intrusion detection system (IDS)?', 'To prevent unauthorized access', 'To monitor network traffic', 'To encrypt data transmissions', 'To authenticate users', 'optionb'),
(19, 11, 'Which of the following is a common authentication factor?', 'Something you know', 'Something you have', 'Something you are', 'All of the above', 'optiond'),
(20, 11, 'What is the purpose of a security policy?', 'To ensure compliance with legal regulations', 'To define rules and guidelines for security measures', 'To restrict access to sensitive data', 'To enhance network performance', 'optionb');

-- --------------------------------------------------------

--
-- Table structure for table `qbc12`
--

CREATE TABLE `qbc12` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbc12`
--

INSERT INTO `qbc12` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 12, 'Which of the following is NOT a digital marketing channel?', 'Social Media Marketing', 'Email Marketing', 'Television Advertising', 'Search Engine Optimization (SEO)', 'optionc'),
(2, 12, 'What is the primary goal of a digital marketing strategy?', 'To increase brand awareness', 'To generate leads and conversions', 'To reduce marketing costs', 'To reduce marketing costs', 'optionb'),
(3, 12, 'What is the purpose of A/B testing in digital marketing?', 'To analyze website traffic', 'To analyze website traffic', 'To analyze website traffic', 'To measure social media engagement', 'optionc'),
(4, 12, 'What does ROI stand for in digital marketing?', 'Return on Investment', 'Reach of Influence', 'Rate of Interaction', 'Revenue of Interest', 'optiona'),
(5, 12, 'Which social media platform is known for its 140-character limit posts?', 'Facebook', 'Instagram', 'Twitter', 'LinkedIn', 'optionc'),
(6, 12, 'What is the main purpose of keyword research in SEO?', 'To increase website traffic', 'To improve website design', 'To optimize website performance', 'To identify search terms used by users', 'optiond'),
(7, 12, 'To identify search terms used by users', 'To sell products directly', 'To educate and engage the audience', 'To educate and engage the audience', 'To generate leads', 'optionb'),
(8, 12, 'Which type of email typically requires action from the recipient?', 'Transactional email', 'Promotional email', 'Newsletter email', 'Welcome email', 'optiona'),
(9, 12, 'What is the main benefit of using pay-per-click (PPC) advertising?', 'Guaranteed top search engine ranking', 'Increased organic search traffic', 'Cost-effective targeting of potential customers', 'Long-term brand building', 'optionc'),
(10, 12, 'Which metric measures the percentage of visitors who leave a website without taking any action?', 'Bounce Rate', 'Click-through Rate', 'Conversion Rate', 'Engagement Rate', 'optiona'),
(11, 12, 'What is the purpose of a call-to-action (CTA) in digital marketing?', 'To provide contact information', 'To encourage user engagement', 'To showcase product features', 'To display customer testimonials', 'optionb'),
(12, 12, 'What does SERP stand for in SEO?', 'Search Engine Results Page', 'Search Engine Ranking Position', 'Search Engine Response Protocol', 'Search Engine Reach and Penetration', 'optiona'),
(13, 12, 'Which social media platform is known for its visual content sharing?', 'Facebook', 'Twitter', 'LinkedIn', 'Instagram', 'optiond'),
(14, 12, 'What is the primary goal of influencer marketing?', 'To increase brand awareness', 'To generate leads and sales', 'To boost search engine rankings', 'To improve website design', 'optiona'),
(15, 12, 'Which metric measures the number of times an ad is shown?', 'Impressions', 'Clicks', 'Conversions', 'Reach', 'optiona'),
(16, 12, 'What is the purpose of a landing page in digital marketing?', 'To showcase a company''s portfolio', 'To provide contact information', 'To capture visitor information', 'To sell products directly', 'optionc'),
(17, 12, 'What is the primary goal of social media marketing?', 'To increase website traffic', 'To generate leads and conversions', 'To improve search engine rankings', 'To reduce marketing costs', 'optionb'),
(18, 12, 'What is the main purpose of customer segmentation in digital marketing?', 'To identify potential customers', 'To analyze competitor strategies', 'To tailor marketing messages to specific audiences', 'To increase website traffic', 'optionc'),
(19, 12, 'Which type of content is typically shared in a blog post?', 'Product descriptions', 'User reviews', 'How-to guides and tutorials', 'Customer testimonials', 'optionc'),
(20, 12, 'What is the primary objective of social media engagement?', 'To increase brand awareness', 'To generate leads and sales', 'To generate leads and sales', 'To showcase product features', 'optionc');

-- --------------------------------------------------------

--
-- Table structure for table `qbco1`
--

CREATE TABLE `qbco1` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco1`
--

INSERT INTO `qbco1` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 2, 'Full form of CPU', 'Control Process Unit', 'Central Process Unit', 'Control Processing Unit', 'Central Processing Unit', 'optiond'),
(2, 2, '1 byte=', '18 bit', '8 bit', '10 bit', '1024 bit', 'optionb'),
(3, 2, 'WWW called________', 'world way web', 'World Wise web', 'World wide web', 'World wide website', 'optionc'),
(4, 2, 'FTP _____', 'File Transfer Protocol', 'File Text Protocol', 'File Transfer Process', 'Format Transfer Protocol', 'optiona'),
(5, 2, 'URL means______________', 'Universal Research locator', 'Uniform Resource Locator', 'Uniform Resource Location', 'Universal Resource Location', 'optionb'),
(6, 2, 'Which of the following is an output device?', 'Keyboard', 'Mouse', 'Light pen', 'Monitor', 'optiond'),
(7, 2, 'Which of the following is an input device?', 'Plotter', 'Printer', 'VDU', 'Mouse', 'optiond'),
(8, 2, 'BIOS is used?', 'By operating system', 'By compiler', 'By interpreter', 'By application software', 'optiona'),
(9, 2, 'Which of the following is equal to a gigabyte?', '1024 bytes', '512 GB', '1024 megabytes', '1024 bits', 'optionc'),
(10, 2, 'What is the full form of RAM?', 'Remote Access Memory', 'Read Access Memory', 'Remote Access Management', 'Random Access Memory', 'optiond'),
(11, 2, 'Which of the following is not considered hardware?', 'Operating system', 'CPU', 'Keyboard', 'Hard disk', 'optiona'),
(12, 2, 'Which of the following is exclusively a sequential access storage device?', 'Hard disk', 'Floppy disk', 'Magnetic tape', 'DVD', 'optionc'),
(13, 2, 'Which of the following numbers is a binary number?', '1 and 2', '0 and 0.1', '2 and 0', '0 and 1', 'optiond'),
(14, 2, 'Which one of the following is an example of the browser software?', 'Microsoft Word', 'Notepad', 'Internet explorer', 'Internet navigator', 'optionc'),
(15, 2, '100 binary number equivalent to _____Decimal', '4', '2', '1', '7', 'optiona'),
(16, 2, 'Which of the following is not a binary number?', '1111', '101', '11E', '100', 'optionc'),
(17, 2, 'What is the shortcut key to run slide show.', 'SHIFT+F5', 'F5', 'CTRL+F5', 'F6', 'optionb'),
(18, 2, 'Header can be inserted from which tab.', 'view', 'mailing', 'insert', 'home', 'optionc'),
(19, 2, 'Which function adds the numerical values in range of cells?', 'Autosum', 'sum', 'add', 'Both a & b', 'optionb'),
(20, 2, 'To change color of a sheet tab which option would be helpful?', 'Right click -> Tab color', 'Right click -> View color', 'Right click ->  Move or Copy', 'Right click -> Insert', 'optiona');

-- --------------------------------------------------------

--
-- Table structure for table `qbco2`
--

CREATE TABLE `qbco2` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco2`
--

INSERT INTO `qbco2` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 3, 'What is the syntax for declaring a character variable named initial?', 'int initial;', 'char initial = ''A'';', 'character initial;', 'String initial;', 'b) char initial = ''A'';'),
(2, 3, 'Which of the following operators has the highest precedence in C?', '+', '*', '&&', '#ERROR!', 'c) && (logical AND)'),
(3, 3, 'The if statement allows for...', 'a) Unconditional execution of a code block', 'b) Conditional execution of a code block', 'c) Looping through a set of data', 'd) Defining functions', 'b) Conditional execution of a code block'),
(4, 3, 'What is the break statement used for within a loop?', 'a) To continue iterating through the loop', 'b) To conditionally exit the loop', 'c) To increment the loop counter', 'd) To define the loop condition', 'b) To conditionally exit the loop'),
(5, 3, 'The scanf function is used for...', 'a) Displaying output to the console', 'b) Reading user input from standard input', 'c) Performing calculations', 'd) Defining variables', 'b) Reading user input from standard input'),
(6, 3, 'What does the return statement do within a function?', 'a) Defines the function name', 'b) Exits the function and optionally returns a value', 'c) Calls another function', 'd) Declares function parameters', 'b) Exits the function and optionally returns a value'),
(7, 3, 'What is a common use case for a structure in C?', 'a) To define a constant value', 'b) To group related data under a single name', 'c) To perform calculations', 'd) To declare a function prototype', 'b) To group related data under a single name'),
(8, 3, 'How can you comment out a single line of code in C?', 'a) // comment', 'b) /* comment */', 'c) # comment', 'd) None of the above', 'a) // comment'),
(9, 3, 'The preprocessor directive #define is used for...', 'a) Defining functions', 'b) Declaring variables', 'c) Including header files', 'd) Creating symbolic constants', 'd) Creating symbolic constants'),
(10, 3, 'In C, what is the keyword used to declare a function that does not return any value?', 'a) int', 'b) void', 'c) char', 'd) float', 'b) void'),
(11, 3, 'Which of the following is NOT a valid storage class specifier in C?', 'a) auto', 'b) static', 'c) register', 'd) public', 'd) public'),
(12, 3, 'What is the difference between = and == operators in C?', 'a) Both perform assignment', 'b) = assigns a value, == checks for equality', 'c) = increments a value, == decrements a value', 'd) None of the above', 'b) = assigns a value, == checks for equality'),
(13, 3, 'How can you pass arguments to a function in C?', 'a) By value', 'b) By reference', 'c) Both a & b', 'd) None of the above', 'c) Both a & b (by value and by reference)'),
(14, 3, 'What does the keyword volatile indicate about a variable?', 'a) Constant value', 'b) May change unexpectedly', 'c) Used for loop control', 'd) Specific data type', 'b) May change unexpectedly'),
(15, 3, 'An array index in C starts from...', 'a) -1', 'b) 0', 'c) 1', 'd) Randomly assigned', 'b) 0');

-- --------------------------------------------------------

--
-- Table structure for table `qbco3`
--

CREATE TABLE `qbco3` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco3`
--

INSERT INTO `qbco3` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 4, 'What is the output of the following code snippet? int x = 5; int y = ++x + x++; cout << y;', '10', '11', '12', '13', 'optiond'),
(2, 4, 'Which keyword is used to define a class in C++?', 'class', 'struct', 'def', 'interface', 'optiona'),
(3, 4, 'Which operator is used to access the member functions and variables of an object in C++?', '.', '->', '::', '<>', 'optiona'),
(4, 4, 'What is the output of the following code snippet? int arr[5] = {1, 2, 3, 4, 5}; cout << arr[6];', '0', '1', 'Garbage value', 'Compilation error', 'optiond'),
(5, 4, 'What is the correct way to declare a pointer in C++?', 'pointer int x;', 'int *x;', 'x = &int;', 'int &x;', 'optionb');

-- --------------------------------------------------------

--
-- Table structure for table `qbco4`
--

CREATE TABLE `qbco4` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco4`
--

INSERT INTO `qbco4` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 1, 'Which operating system is based on the UNIX architecture?', 'Linux', 'Windows', 'macOS', 'Android', 'optiona'),
(2, 1, 'What is the primary function of an operating system?', 'Managing hardware resources', 'Providing entertainment', 'Running applications', 'Sending emails', 'optiona'),
(3, 1, 'Which command is used to display the current directory in UNIX?', 'dir', 'cd', 'ls', 'pwd', 'optiond'),
(4, 1, 'What does the ''grep'' command do in UNIX?', 'Search for files', 'Display calendar', 'Search for text patterns in files', 'Print file contents', 'optionc'),
(5, 1, 'Which file system is commonly used in UNIX-based operating systems?', 'NTFS', 'FAT32', 'ext4', 'FAT16', 'optionc'),
(6, 1, 'Which command is used to create a new directory in UNIX?', 'newdir', 'mkdir', 'createdir', 'makedir', 'optionb'),
(7, 1, 'What is the purpose of the ''chmod'' command in UNIX?', 'Change file ownership', 'Change file ownership', 'Change file ownership', 'Change file ownership', 'optionb'),
(8, 1, 'Which UNIX command is used to display the contents of a file?', 'print', 'cat', 'show', 'view', 'optionb'),
(9, 1, 'What does the ''grep'' command stand for in UNIX?', 'Global regular expression print', 'General regular expression program', 'Global regular expression program', 'General regular expression print', 'optionc'),
(10, 1, 'Which command is used to remove a file in UNIX?', 'rm', 'del', 'remove', 'delete', 'optiona'),
(11, 1, 'What is the purpose of the ''tar'' command in UNIX?', 'Create a new file', 'Extract files from an archive', 'Compress files into an archive', 'Encrypt files', 'optionc'),
(12, 1, 'Which UNIX command is used to change the current directory?', 'dir', 'chdir', 'cd', 'changedir', 'optionc'),
(13, 1, 'Which command is used to display the manual page for a UNIX command?', 'info', 'help', 'man', 'manual', 'optionc'),
(14, 1, 'What does the ''ps'' command do in UNIX?', 'Print system information', 'Display current processes', 'Pause system operation', 'Pause system operation', 'optionb'),
(15, 1, 'Which command is used to display the disk usage in UNIX?', 'du', 'df', 'disk', 'usage', 'optiona'),
(16, 1, 'What is the purpose of the ''passwd'' command in UNIX?', 'Print user passwords', 'Change user password', 'Delete user password', 'View user password policy', 'optionb'),
(17, 1, 'Which command is used to create a symbolic link in UNIX?', 'ln', 'link', 'symlink', 'mklink', 'optiona'),
(18, 1, 'What does the ''top'' command do in UNIX?', 'Display system hardware information', 'Display running processes and their resource usage', '. Display disk space usage', '. Display disk space usage', 'optionb'),
(19, 1, 'Which command is used to terminate a process in UNIX?', 'kill', 'stop', 'end', 'terminate', 'optiona'),
(20, 1, 'What does the ''grep -v'' command do in UNIX?', 'Display verbose output', 'Display verbose output', 'Display only filenames', 'Display version information', 'optionb');

-- --------------------------------------------------------

--
-- Table structure for table `qbco5`
--

CREATE TABLE `qbco5` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco5`
--

INSERT INTO `qbco5` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 5, 'Which of the following is not a linear data structure?', 'Array', 'Linked List', 'Stack', 'Binary Tree', 'optiond'),
(2, 5, 'Which data structure is best suited for implementing a stack?', 'Array', 'Linked List', 'Queue', 'Tree', 'optiona'),
(3, 5, 'What is the time complexity of searching an element in a binary search tree (BST) in the worst-case scenario?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'optionb'),
(4, 5, 'Which of the following is not a sorting algorithm?', 'Merge Sort', 'Quick Sort', 'Breadth-First Search (BFS)', 'Selection Sort', 'optionc'),
(5, 5, 'Which data structure uses LIFO (Last In First Out) ordering?', 'Queue', 'Stack', 'Linked List', 'Heap', 'optionb'),
(6, 5, 'In a binary tree, the maximum number of nodes at level ''k'' is:', 'k', '2^k', '2^(k-1)', '2^(k+1) - 1', 'optiond'),
(7, 5, 'Which of the following operations is NOT typically performed on a priority queue?', 'Insert', 'Delete', 'Update', 'Search', 'optiond'),
(8, 5, 'Which data structure is typically used to implement a hash table?', 'Array', 'Linked List', 'Stack', 'Binary Search Tree', 'optiona'),
(9, 5, 'Which sorting algorithm has the worst-case time complexity of O(n^2)?', 'Merge Sort', 'Quick Sort', 'Bubble Sort', 'Heap Sort', 'optionc'),
(10, 5, 'Which of the following is NOT a type of traversal in a binary tree?', 'Inorder', 'Preorder', 'Postorder', 'Breadth-First Search (BFS)', 'optiond'),
(11, 5, 'Which data structure is typically used for implementing graphs?', 'Array', 'Linked List', 'Queue', 'Stack', 'optionb'),
(12, 5, 'Which of the following data structures is used to store and retrieve data in a non-linear fashion?', 'Array', 'Linked List', 'Stack', 'Tree', 'optiond'),
(13, 5, 'Which of the following is NOT a search algorithm?', 'Linear Search', 'Binary Search', 'Depth-First Search (DFS)', 'Bubble Sort', 'optiond'),
(14, 5, 'Which data structure uses FIFO (First In First Out) ordering?', 'Stack', 'Queue', 'Binary Tree', 'Heap', 'optionb'),
(15, 5, 'What is the time complexity of inserting an element into a heap?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'optionb'),
(16, 5, 'Which of the following is a disadvantage of using an array to implement a stack?', 'Dynamic memory allocation', 'Fixed size', 'High memory overhead', 'Slow access time', 'optionb'),
(17, 5, 'Which data structure is used in Depth-First Search (DFS) traversal of a graph?', 'Stack', 'Queue', 'Linked List', 'Binary Tree', 'optiona'),
(18, 5, 'What is the time complexity of finding the maximum element in a binary search tree (BST)?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'optionb'),
(19, 5, 'Which of the following is NOT an application of a priority queue?', 'Task scheduling', 'Huffman coding', 'Dijkstra''s algorithm', 'Binary Search', 'optiond'),
(20, 5, 'Which data structure is used for implementing recursion?', 'Array', 'Linked List', 'Stack', 'Queue', 'OPTIONC');

-- --------------------------------------------------------

--
-- Table structure for table `qbco6`
--

CREATE TABLE `qbco6` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco6`
--

INSERT INTO `qbco6` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 6, 'What is Java?', 'A programming language', 'A type of coffee', 'A dance form', 'A sports car', 'optiona'),
(2, 6, 'Which keyword is used to define a class in Java?', 'class', 'int', 'float', 'void', 'optiona'),
(3, 6, 'What is the output of the following code snippet? int x = 5; int y = 3; System.out.println(x + y);', '8', '15', '35', 'Syntax Error', 'optiona'),
(4, 6, 'Which of the following is not a primitive data type in Java?', 'int', 'float', 'string', 'char', 'optionc'),
(5, 6, 'What is the correct syntax for a single-line comment in Java?', '//', '##', '/* ', '%', 'optiona'),
(6, 6, 'Which method is called when an object is created?', 'main()', 'finalize()', 'constructor()', 'destroy()', 'optionc'),
(7, 6, 'What is the default value of int type in Java?', '0', '1', '-1', 'null', 'optiona');

-- --------------------------------------------------------

--
-- Table structure for table `qbco7`
--

CREATE TABLE `qbco7` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco7`
--

INSERT INTO `qbco7` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 7, 'What is Python?', 'A type of snake', 'A programming language', 'A type of food', 'A type of car', 'optionb'),
(2, 7, 'Which of the following is a correct way to comment in Python?', '//', '##', '/*  */', '#', 'optiond'),
(3, 7, 'Which symbol is used for string concatenation in Python?', '+', '*', '&', '-', 'optiona');

-- --------------------------------------------------------

--
-- Table structure for table `qbco8`
--

CREATE TABLE `qbco8` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco8`
--

INSERT INTO `qbco8` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 8, 'IOT stands for ?', 'Internet of Technology', 'Internet of Things', 'Internet of Telecommunications', 'Internet of Trends', 'optionb'),
(2, 8, 'Which of the following is NOT a component of an IoT system?', 'Sensors', 'Actuators', 'Web browser', 'Microcontroller', 'optionc'),
(3, 8, 'Which wireless technology is commonly used for IoT communication over short distances?', 'Wi-Fi', 'Bluetooth', '4G LTE', 'Zigbee', 'optionb'),
(4, 8, 'What is the primary purpose of a sensor in an IoT device?', 'To process data', 'To store data', 'To sense the physical environment', 'To display data', 'optionc'),
(5, 8, 'Which protocol is commonly used for IoT device communication over the internet?', 'HTTP', 'TCP/IP', 'MQTT', 'UDP', 'optionc'),
(6, 8, 'What is the role of an actuator in an IoT system?', 'To sense environmental data', 'To process data', 'To display information', 'To perform actions based on received data', 'optiond'),
(7, 8, 'Which of the following is an example of a smart IoT device?', 'Microwave oven', 'Traditional light bulb', 'Analog thermometer', 'Basic calculator', 'optiona'),
(8, 8, 'Which layer of the IoT architecture is responsible for data processing and analysis?', 'Perception layer', 'Network layer', 'Application layer', 'Processing layer', 'optiond'),
(9, 8, 'What is the primary benefit of using IoT technology?', 'Increased security', 'Reduced energy consumption', 'Decreased connectivity', 'Limited scalability', 'optionb'),
(10, 8, 'Which of the following is NOT a potential application of IoT technology?', 'Smart homes', 'Industrial automation', 'Healthcare monitoring', 'Paper-based document storage', 'optiond'),
(11, 8, 'What is the purpose of edge computing in IoT systems?', 'To perform data processing locally on IoT devices', 'To store data in the cloud', 'To store data in the cloud', 'To display data on a user interface', 'optiona'),
(12, 8, 'Which of the following is an example of a wearable IoT device?', 'Smartwatch', 'Microwave oven', 'Refrigerator', 'Washing machine', 'optiona'),
(13, 8, 'What is the primary concern related to IoT security?', 'Scalability', 'Interoperability', 'Privacy', 'Connectivity', 'optionc'),
(14, 8, 'Which communication protocol is commonly used for low-power, long-range IoT devices?', 'Wi-Fi', 'Bluetooth', 'LoRaWAN', 'Zigbee', 'optionc'),
(15, 8, 'What is the role of a gateway in an IoT network?', 'To transmit data to the cloud', 'To block unauthorized access', 'To process data locally', 'To bridge different network protocols', 'optiond'),
(16, 8, 'Which of the following is a characteristic of fog computing in IoT?', 'Data processing occurs at the cloud server', 'Data processing occurs at the edge devices', 'Data processing occurs at a central server', 'Data processing occurs at the gateway', 'optionb'),
(17, 8, 'What is the primary purpose of data analytics in IoT systems?', 'To collect sensor data', 'To analyze sensor data for insights', 'To transmit sensor data to the cloud', 'To visualize sensor data', 'optionb'),
(18, 8, 'Which of the following is a challenge in implementing IoT solutions?', 'Limited device connectivity', 'High energy consumption', 'Lack of data privacy regulations', 'High deployment costs', 'optiond'),
(19, 8, 'Which of the following is an example of an IoT platform?', 'Microsoft Word', 'Google Maps', 'IBM Watson IoT', 'Adobe Photoshop', 'optionc'),
(20, 8, 'What is the purpose of digital twins in IoT systems?', 'To simulate physical devices', 'To create virtual reality experiences', 'To optimize manufacturing processes', 'To generate IoT device prototypes', 'optiona');

-- --------------------------------------------------------

--
-- Table structure for table `qbco9`
--

CREATE TABLE `qbco9` (
  `id` int(11) NOT NULL,
  `courseid` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `courseid` (`courseid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qbco9`
--

INSERT INTO `qbco9` (`id`, `courseid`, `que`, `optiona`, `optionb`, `optionc`, `optiond`, `right_ans`) VALUES
(1, 9, 'Which of the following is NOT a 2D primitive in computer graphics?', 'Line', 'Circle', 'Cube', 'Polygon', 'optionc'),
(2, 9, 'What is the purpose of a raster scan display?', 'To produce high-quality images', 'To display images using pixels', 'To display images using pixels', 'To display images using pixels', 'optionb'),
(3, 9, 'What does GPU stand for in computer graphics?', 'Graphics Processing Unit', 'Graphical Pixel Unit', 'Graphical Processing Engine', 'Geometric Processing Unit', 'optiona'),
(4, 9, 'Which algorithm is used for line clipping in computer graphics?', 'Bresenham''s Line Algorithm', 'Cohen-Sutherland Line Clipping Algorithm', 'Midpoint Line Algorithm', 'Liang-Barsky Line Clipping Algorithm', 'optionb'),
(5, 9, 'What is the purpose of anti-aliasing in computer graphics?', 'To reduce the number of polygons in a model', 'To remove jagged edges in rendered images', 'To remove jagged edges in rendered images', 'To improve texture mapping', 'optionb'),
(6, 9, 'Which transformation is used to rotate an object in computer graphics?', 'Translation', 'Scaling', 'Rotation', 'Reflection', 'optionc'),
(7, 9, 'Which rendering technique is based on simulating the behavior of light in a scene?', 'Wireframe rendering', 'Rasterization', 'Ray tracing', 'Texture mapping', 'optionc'),
(8, 9, 'Which 3D primitive is used to represent a sphere in computer graphics?', 'Cylinder', 'Cone', 'Sphere', 'Torus', 'optionc'),
(9, 9, 'What is the primary advantage of using vector graphics over raster graphics?', 'Scalability', 'Realism', 'Color depth', 'File size', 'optiona'),
(10, 9, 'What is the purpose of the Z-buffer in computer graphics?', 'To store color information', 'To perform hidden surface removal', 'To control the intensity of light sources', 'To render transparent objects', 'optionb'),
(11, 9, 'Which curve is used to represent smooth curves in computer graphics?', 'Bezier curve', 'B-spline curve', 'Hermite curve', 'Catmull-Rom curve', 'optiona'),
(12, 9, 'Which type of projection is commonly used in 3D graphics applications?', 'Orthographic projection', 'Isometric projection', 'Perspective projection', 'Parallel projection', 'optionc'),
(13, 9, 'What is the primary goal of texture mapping in computer graphics?', 'To add color to objects', 'To simulate surface detail', 'To remove hidden surfaces', 'To transform objects', 'optionb'),
(14, 9, 'Which algorithm is used for polygon filling in computer graphics?', 'Flood Fill Algorithm', 'Bresenham''s Line Algorithm', 'Cohen-Sutherland Line Clipping Algorithm', 'Midpoint Line Algorithm', 'optiona'),
(15, 9, 'Which technique is used to simulate the effect of light reflection on shiny surfaces?', 'Phong shading', 'Gouraud shading', 'Flat shading', 'Lambertian shading', 'optiona'),
(16, 9, 'What is the primary purpose of a framebuffer in computer graphics?', 'To store pixel data', 'To perform rendering calculations', 'To control the display hardware', 'To generate geometry', 'optiona'),
(17, 9, 'Which algorithm is used for hidden surface removal in computer graphics?', 'Bresenham''s Line Algorithm', 'Cohen-Sutherland Line Clipping Algorithm', 'Painter''s Algorithm', 'Midpoint Line Algorithm', 'optionc'),
(18, 9, 'What does VBO stand for in computer graphics?', 'Vector Buffer Object', 'Vertex Buffer Object', 'Visible Backface Object', 'Viewport Border Object', 'optionb'),
(19, 9, 'Which transformation is used to scale an object in computer graphics?', 'Translation', 'Scaling', 'Rotation', 'Reflection', 'optionb'),
(20, 9, 'What is the primary goal of ray tracing in computer graphics?', 'To perform hidden surface removal', 'To perform hidden surface removal', 'To generate texture coordinates', 'To transform 3D objects', 'optionb');

-- --------------------------------------------------------

--
-- Table structure for table `reg_fac`
--

CREATE TABLE `reg_fac` (
  `facid` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(10) default NULL,
  `dob` date default NULL,
  `doj` date default NULL,
  `gender` varchar(255) default NULL,
  `program` varchar(255) default NULL,
  `course1` varchar(255) default NULL,
  `course2` varchar(255) default NULL,
  `course3` varchar(255) default NULL,
  `course4` varchar(255) default NULL,
  `profile_pic` varchar(255) NOT NULL,
  PRIMARY KEY  (`facid`),
  KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_fac`
--

INSERT INTO `reg_fac` (`facid`, `name`, `email`, `password`, `contactno`, `dob`, `doj`, `gender`, `program`, `course1`, `course2`, `course3`, `course4`, `profile_pic`) VALUES
(1, 'Dr. Nirali Dave', 'nirali.dave@vvwusurat.ac.in', 'dr.nirali.dave', NULL, '1988-02-09', '2021-09-02', 'female', 'BCA', 'CS11010-ICOA', 'CS11070-Operating System With UNIX', 'CS11210-Computer Graphics', 'CS11090-Data Structure', 'uploads/img_03.png'),
(2, 'Dr. Hemangini Patel', 'hemangini.patel@vvwusurat.ac.in', 'dr.hemangini.patel', NULL, '1987-08-03', '2021-08-07', 'female', 'BCA', 'CS11030-Programming Using C', 'CS11130-Programming Using JAVA', 'None of these', 'None of these', 'uploads/img_07.jpg'),
(3, 'Dr. Dikshan Shah', 'dikshan.shah@vvwusurat.ac.in', 'dr.dikshan.shah', NULL, '1986-12-09', '2022-01-26', 'male', 'BCA', 'CS11130-Programming Using JAVA', 'CS51020-Internet Of Things', 'CS11160-Programming Using Python', 'None of these', 'uploads/img_06.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reg_stu`
--

CREATE TABLE `reg_stu` (
  `rollno` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255) NOT NULL,
  `contactno` varchar(10) default NULL,
  `dob` date default NULL,
  `program` varchar(255) default NULL,
  `year` int(11) default NULL,
  `sem` varchar(255) default NULL,
  `div` varchar(255) default NULL,
  `profile_pic` varchar(255) default NULL,
  PRIMARY KEY  (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_stu`
--

INSERT INTO `reg_stu` (`rollno`, `name`, `email`, `password`, `contactno`, `dob`, `program`, `year`, `sem`, `div`, `profile_pic`) VALUES
(2112106, 'Gothi Maitry Kalpeshbhai', '2112106.maitry.gothi@vvwusurat.ac.in', 'maitry.gothi', '9974827803', '2003-08-27', 'BCA', 3, '6', 'B', 'uploads/img_04.jfif'),
(2112125, 'Jetani Prapti Manishkumar ', '2112125.prapti.jetani@vvwusurat.ac.in', 'prapti.jetani', '7203805529', '2003-05-22', 'BCA', 3, '5', 'B', 'uploads/img_04.jfif'),
(2112149, 'Kansara Priya Rajeshkhumar', '2112149.priya.kansara@vvwusurat.ac.in', 'priya.kansara', '8000289429', '2003-08-16', 'BCA', 3, '6', 'A', 'uploads/img_04.jfif'),
(2112186, 'Mali Manjari Jogeshbhai', '2112186.manjari.mali@vvwusurat.ac.in', 'manjari.mali', '9824476295', '2003-04-03', 'BCA', 3, '5', 'A', 'uploads/img_04.jfif'),
(2212100, 'Jetani Pooja Rameshbhai', '2212100.pooja.jetani@vvwusurat.ac.in', 'pooja.jetani', '8160058921', '2003-10-21', 'BCA', 2, '3', 'B', 'uploads/img_04.jfif'),
(2212101, 'Patel Hetviben Kishankumar', '2212101.hetvi.patel@vvwusurat.ac.in', 'hetvi.patel', '9081751064', '2003-01-08', 'BCA', 2, '3', 'A', 'uploads/img_04.jfif'),
(2212102, 'Modi Ayusiben Vimalbhai', '2212102.ayushi.modi@vvwusurat.ac.in', 'ayushi.modi', '8200712853', '2003-05-13', 'BCA', 2, '4', 'B', 'uploads/img_04.jfif'),
(2212103, 'Jain Sanvi Sagar', '2212103.sanvi.jain@vvwusurat.ac.in', 'sanvi.jain', '9328038635', '2003-07-15', 'BCA', 2, '4', 'A', 'uploads/img_04.jfif'),
(2312100, 'Dhola Shreya Kalpeshkumar', '2312100.shreya.dhola@vvwusurat.ac.in', 'shreya.dhola', '8200456407', '2003-11-10', 'BCA', 1, '1', 'B', 'uploads/img_04.jfif'),
(2312101, 'Jogani Ayushi Dipakbhai', '2312101.ayushi.jogani@vvwusurat.ac.in', 'ayushi.jogani', '9586781104', '2003-04-08', 'BCA', 1, '1', 'A', 'uploads/img_04.jfif'),
(2312102, 'Patel Tisha Maheshbhai', '23121.3.tisha.patel@vvwusurat.ac.in', 'tisha.patel', '6354740905', '2003-10-14', 'BCA', 1, '2', 'B', 'uploads/img_04.jfif'),
(2312103, 'Soni Khushi Manojbhai', '2312103.khushi.soni@vvwusurat.ac.in', 'khushi.soni', '9409220355', '2003-11-20', 'BCA', 1, '2', 'A', 'uploads/img_04.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `resultid` int(11) NOT NULL,
  `rollno` int(11) default NULL,
  `paperid` int(11) default NULL,
  `right_ans` int(11) default NULL,
  `wrong_ans` int(11) default NULL,
  `obtain_mark` int(11) default NULL,
  PRIMARY KEY  (`resultid`),
  KEY `rollno` (`rollno`),
  KEY `paperid` (`paperid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--


-- --------------------------------------------------------

--
-- Table structure for table `result_table`
--

CREATE TABLE `result_table` (
  `email` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_table`
--

INSERT INTO `result_table` (`email`, `score`, `percentage`, `date`, `time`) VALUES
('2312103.khushi.soni@vvwusurat.ac.in', '0', '0', '2024-04-13', '00:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_exam`
--

CREATE TABLE `schedule_exam` (
  `scheduleid` int(11) NOT NULL auto_increment,
  `date_time` datetime default NULL,
  `program` varchar(255) default NULL,
  `year` int(11) default NULL,
  `sem` varchar(255) default NULL,
  `course` varchar(255) default NULL,
  PRIMARY KEY  (`scheduleid`),
  UNIQUE KEY `date_time` (`date_time`),
  KEY `program` (`program`),
  KEY `year` (`year`),
  KEY `sem` (`sem`),
  KEY `course` (`course`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `schedule_exam`
--

INSERT INTO `schedule_exam` (`scheduleid`, `date_time`, `program`, `year`, `sem`, `course`) VALUES
(1, '2024-03-25 12:54:00', 'BCA', 1, '2', 'Operating System With UNIX'),
(2, '2024-04-13 00:06:00', 'BCA', 2, '3', 'Programming Using JAVA'),
(3, '2024-04-25 00:07:00', 'BCA', 3, '6', 'Digital Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semid` int(11) NOT NULL,
  `sem` varchar(255) default NULL,
  `year` int(11) default NULL,
  `program` varchar(255) default NULL,
  PRIMARY KEY  (`semid`),
  UNIQUE KEY `sem` (`sem`),
  KEY `year` (`year`),
  KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semid`, `sem`, `year`, `program`) VALUES
(1, '2', 1, 'BCA'),
(2, '1', 1, 'BCA'),
(3, '3', 2, 'BCA'),
(4, '4', 2, 'BCA'),
(5, '5', 3, 'BCA'),
(6, '6', 3, 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `store_paper`
--

CREATE TABLE `store_paper` (
  `storeid` int(11) NOT NULL,
  `paperid` int(11) default NULL,
  `id` int(11) default NULL,
  `que` varchar(255) default NULL,
  `optiona` varchar(255) default NULL,
  `optionb` varchar(255) default NULL,
  `optionc` varchar(255) default NULL,
  `optiond` varchar(255) default NULL,
  `right_ans` varchar(1) default NULL,
  PRIMARY KEY  (`storeid`),
  KEY `paperid` (`paperid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_paper`
--


-- --------------------------------------------------------

--
-- Table structure for table `tmp_paper`
--

CREATE TABLE `tmp_paper` (
  `id` int(11) NOT NULL auto_increment,
  `subject` varchar(255) NOT NULL,
  `paper` varchar(10000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `tmp_paper`
--

INSERT INTO `tmp_paper` (`id`, `subject`, `paper`) VALUES
(34, 'CS11070-Operating System With UNIX', 'Question: 1<br>Which command is used to create a symbolic link in UNIX?<br><input type=''radio'' name=''answer_17'' value=''A''>Option A: ln<br><input type=''radio'' name=''answer_17'' value=''A''>Option B: link<br><input type=''radio'' name=''answer_17'' value=''A''>Option C: symlink<br><input type=''radio'' name=''answer_17'' value=''A''>Option D: mklink<br><br>Question: 2<br>What does the ''grep -v'' command do in UNIX?<br><input type=''radio'' name=''answer_20'' value=''A''>Option A: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option B: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option C: Display only filenames<br><input type=''radio'' name=''answer_20'' value=''A''>Option D: Display version information<br><br>Question: 3<br>Which UNIX command is used to display the contents of a file?<br><input type=''radio'' name=''answer_8'' value=''A''>Option A: print<br><input type=''radio'' name=''answer_8'' value=''A''>Option B: cat<br><input type=''radio'' name=''answer_8'' value=''A''>Option C: show<br><input type=''radio'' name=''answer_8'' value=''A''>Option D: view<br><br>Question: 4<br>What does the ''top'' command do in UNIX?<br><input type=''radio'' name=''answer_18'' value=''A''>Option A: Display system hardware information<br><input type=''radio'' name=''answer_18'' value=''A''>Option B: Display running processes and their resource usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option C: . Display disk space usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option D: . Display disk space usage<br><br>Question: 5<br>What does the ''ps'' command do in UNIX?<br><input type=''radio'' name=''answer_14'' value=''A''>Option A: Print system information<br><input type=''radio'' name=''answer_14'' value=''A''>Option B: Display current processes<br><input type=''radio'' name=''answer_14'' value=''A''>Option C: Pause system operation<br><input type=''radio'' name=''answer_14'' value=''A''>Option D: Pause system operation<br><br>Question: 6<br>What is the purpose of the ''passwd'' command in UNIX?<br><input type=''radio'' name=''answer_16'' value=''A''>Option A: Print user passwords<br><input type=''radio'' name=''answer_16'' value=''A''>Option B: Change user password<br><input type=''radio'' name=''answer_16'' value=''A''>Option C: Delete user password<br><input type=''radio'' name=''answer_16'' value=''A''>Option D: View user password policy<br><br>Question: 7<br>What is the purpose of the ''tar'' command in UNIX?<br><input type=''radio'' name=''answer_11'' value=''A''>Option A: Create a new file<br><input type=''radio'' name=''answer_11'' value=''A''>Option B: Extract files from an archive<br><input type=''radio'' name=''answer_11'' value=''A''>Option C: Compress files into an archive<br><input type=''radio'' name=''answer_11'' value=''A''>Option D: Encrypt files<br><br>Question: 8<br>What does the ''grep'' command stand for in UNIX?<br><input type=''radio'' name=''answer_9'' value=''A''>Option A: Global regular expression print<br><input type=''radio'' name=''answer_9'' value=''A''>Option B: General regular expression program<br><input type=''radio'' name=''answer_9'' value=''A''>Option C: Global regular expression program<br><input type=''radio'' name=''answer_9'' value=''A''>Option D: General regular expression print<br><br>Question: 9<br>Which operating system is based on the UNIX architecture?<br><input type=''radio'' name=''answer_1'' value=''A''>Option A: Linux<br><input type=''radio'' name=''answer_1'' value=''A''>Option B: Windows<br><input type=''radio'' name=''answer_1'' value=''A''>Option C: macOS<br><input type=''radio'' name=''answer_1'' value=''A''>Option D: Android<br><br>Question: 10<br>What is the purpose of the ''chmod'' command in UNIX?<br><input type=''radio'' name=''answer_7'' value=''A''>Option A: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option B: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option C: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option D: Change file ownership<br><br>'),
(35, 'CS11070-Operating System With UNIX', 'Question: 1<br>What does the ''grep -v'' command do in UNIX?<br><input type=''radio'' name=''answer_20'' value=''A''>Option A: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option B: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option C: Display only filenames<br><input type=''radio'' name=''answer_20'' value=''A''>Option D: Display version information<br><br>Question: 2<br>Which command is used to remove a file in UNIX?<br><input type=''radio'' name=''answer_10'' value=''A''>Option A: rm<br><input type=''radio'' name=''answer_10'' value=''A''>Option B: del<br><input type=''radio'' name=''answer_10'' value=''A''>Option C: remove<br><input type=''radio'' name=''answer_10'' value=''A''>Option D: delete<br><br>Question: 3<br>Which command is used to terminate a process in UNIX?<br><input type=''radio'' name=''answer_19'' value=''A''>Option A: kill<br><input type=''radio'' name=''answer_19'' value=''A''>Option B: stop<br><input type=''radio'' name=''answer_19'' value=''A''>Option C: end<br><input type=''radio'' name=''answer_19'' value=''A''>Option D: terminate<br><br>Question: 4<br>Which command is used to create a new directory in UNIX?<br><input type=''radio'' name=''answer_6'' value=''A''>Option A: newdir<br><input type=''radio'' name=''answer_6'' value=''A''>Option B: mkdir<br><input type=''radio'' name=''answer_6'' value=''A''>Option C: createdir<br><input type=''radio'' name=''answer_6'' value=''A''>Option D: makedir<br><br>Question: 5<br>What is the purpose of the ''chmod'' command in UNIX?<br><input type=''radio'' name=''answer_7'' value=''A''>Option A: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option B: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option C: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option D: Change file ownership<br><br>Question: 6<br>Which operating system is based on the UNIX architecture?<br><input type=''radio'' name=''answer_1'' value=''A''>Option A: Linux<br><input type=''radio'' name=''answer_1'' value=''A''>Option B: Windows<br><input type=''radio'' name=''answer_1'' value=''A''>Option C: macOS<br><input type=''radio'' name=''answer_1'' value=''A''>Option D: Android<br><br>Question: 7<br>Which command is used to display the current directory in UNIX?<br><input type=''radio'' name=''answer_3'' value=''A''>Option A: dir<br><input type=''radio'' name=''answer_3'' value=''A''>Option B: cd<br><input type=''radio'' name=''answer_3'' value=''A''>Option C: ls<br><input type=''radio'' name=''answer_3'' value=''A''>Option D: pwd<br><br>Question: 8<br>Which command is used to display the disk usage in UNIX?<br><input type=''radio'' name=''answer_15'' value=''A''>Option A: du<br><input type=''radio'' name=''answer_15'' value=''A''>Option B: df<br><input type=''radio'' name=''answer_15'' value=''A''>Option C: disk<br><input type=''radio'' name=''answer_15'' value=''A''>Option D: usage<br><br>Question: 9<br>Which UNIX command is used to display the contents of a file?<br><input type=''radio'' name=''answer_8'' value=''A''>Option A: print<br><input type=''radio'' name=''answer_8'' value=''A''>Option B: cat<br><input type=''radio'' name=''answer_8'' value=''A''>Option C: show<br><input type=''radio'' name=''answer_8'' value=''A''>Option D: view<br><br>Question: 10<br>What does the ''top'' command do in UNIX?<br><input type=''radio'' name=''answer_18'' value=''A''>Option A: Display system hardware information<br><input type=''radio'' name=''answer_18'' value=''A''>Option B: Display running processes and their resource usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option C: . Display disk space usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option D: . Display disk space usage<br><br>'),
(36, 'CS11070-Operating System With UNIX', 'question paper');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_upload`
--

CREATE TABLE `tmp_upload` (
  `id` int(11) NOT NULL auto_increment,
  `subject` varchar(255) NOT NULL,
  `up_paper` varchar(10000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `tmp_upload`
--

INSERT INTO `tmp_upload` (`id`, `subject`, `up_paper`) VALUES
(34, 'Operating System With UNIX', 'Question: 1<br>Which command is used to create a symbolic link in UNIX?<br><input type=''radio'' name=''answer_17'' value=''A''>Option A: ln<br><input type=''radio'' name=''answer_17'' value=''A''>Option B: link<br><input type=''radio'' name=''answer_17'' value=''A''>Option C: symlink<br><input type=''radio'' name=''answer_17'' value=''A''>Option D: mklink<br><br>Question: 2<br>What does the ''grep -v'' command do in UNIX?<br><input type=''radio'' name=''answer_20'' value=''A''>Option A: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option B: Display verbose output<br><input type=''radio'' name=''answer_20'' value=''A''>Option C: Display only filenames<br><input type=''radio'' name=''answer_20'' value=''A''>Option D: Display version information<br><br>Question: 3<br>Which UNIX command is used to display the contents of a file?<br><input type=''radio'' name=''answer_8'' value=''A''>Option A: print<br><input type=''radio'' name=''answer_8'' value=''A''>Option B: cat<br><input type=''radio'' name=''answer_8'' value=''A''>Option C: show<br><input type=''radio'' name=''answer_8'' value=''A''>Option D: view<br><br>Question: 4<br>What does the ''top'' command do in UNIX?<br><input type=''radio'' name=''answer_18'' value=''A''>Option A: Display system hardware information<br><input type=''radio'' name=''answer_18'' value=''A''>Option B: Display running processes and their resource usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option C: . Display disk space usage<br><input type=''radio'' name=''answer_18'' value=''A''>Option D: . Display disk space usage<br><br>Question: 5<br>What does the ''ps'' command do in UNIX?<br><input type=''radio'' name=''answer_14'' value=''A''>Option A: Print system information<br><input type=''radio'' name=''answer_14'' value=''A''>Option B: Display current processes<br><input type=''radio'' name=''answer_14'' value=''A''>Option C: Pause system operation<br><input type=''radio'' name=''answer_14'' value=''A''>Option D: Pause system operation<br><br>Question: 6<br>What is the purpose of the ''passwd'' command in UNIX?<br><input type=''radio'' name=''answer_16'' value=''A''>Option A: Print user passwords<br><input type=''radio'' name=''answer_16'' value=''A''>Option B: Change user password<br><input type=''radio'' name=''answer_16'' value=''A''>Option C: Delete user password<br><input type=''radio'' name=''answer_16'' value=''A''>Option D: View user password policy<br><br>Question: 7<br>What is the purpose of the ''tar'' command in UNIX?<br><input type=''radio'' name=''answer_11'' value=''A''>Option A: Create a new file<br><input type=''radio'' name=''answer_11'' value=''A''>Option B: Extract files from an archive<br><input type=''radio'' name=''answer_11'' value=''A''>Option C: Compress files into an archive<br><input type=''radio'' name=''answer_11'' value=''A''>Option D: Encrypt files<br><br>Question: 8<br>What does the ''grep'' command stand for in UNIX?<br><input type=''radio'' name=''answer_9'' value=''A''>Option A: Global regular expression print<br><input type=''radio'' name=''answer_9'' value=''A''>Option B: General regular expression program<br><input type=''radio'' name=''answer_9'' value=''A''>Option C: Global regular expression program<br><input type=''radio'' name=''answer_9'' value=''A''>Option D: General regular expression print<br><br>Question: 9<br>Which operating system is based on the UNIX architecture?<br><input type=''radio'' name=''answer_1'' value=''A''>Option A: Linux<br><input type=''radio'' name=''answer_1'' value=''A''>Option B: Windows<br><input type=''radio'' name=''answer_1'' value=''A''>Option C: macOS<br><input type=''radio'' name=''answer_1'' value=''A''>Option D: Android<br><br>Question: 10<br>What is the purpose of the ''chmod'' command in UNIX?<br><input type=''radio'' name=''answer_7'' value=''A''>Option A: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option B: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option C: Change file ownership<br><input type=''radio'' name=''answer_7'' value=''A''>Option D: Change file ownership<br><br>');

-- --------------------------------------------------------

--
-- Table structure for table `yea`
--

CREATE TABLE `yea` (
  `yid` int(11) NOT NULL,
  `year` int(11) default NULL,
  `program` varchar(255) default NULL,
  PRIMARY KEY  (`yid`),
  UNIQUE KEY `year` (`year`),
  KEY `program` (`program`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yea`
--

INSERT INTO `yea` (`yid`, `year`, `program`) VALUES
(1, 1, 'BCA'),
(2, 2, 'BCA'),
(3, 3, 'BCA');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cour`
--
ALTER TABLE `cour`
  ADD CONSTRAINT `cour_ibfk_1` FOREIGN KEY (`sem`) REFERENCES `semester` (`sem`),
  ADD CONSTRAINT `cour_ibfk_2` FOREIGN KEY (`year`) REFERENCES `yea` (`year`),
  ADD CONSTRAINT `cour_ibfk_3` FOREIGN KEY (`program`) REFERENCES `pro` (`program`);

--
-- Constraints for table `generate_paper`
--
ALTER TABLE `generate_paper`
  ADD CONSTRAINT `generate_paper_ibfk_1` FOREIGN KEY (`courseco`) REFERENCES `cour` (`courseco`),
  ADD CONSTRAINT `generate_paper_ibfk_2` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `give_exam`
--
ALTER TABLE `give_exam`
  ADD CONSTRAINT `give_exam_ibfk_1` FOREIGN KEY (`paperid`) REFERENCES `generate_paper` (`paper_id`),
  ADD CONSTRAINT `give_exam_ibfk_2` FOREIGN KEY (`rollno`) REFERENCES `reg_stu` (`rollno`);

--
-- Constraints for table `qbc10`
--
ALTER TABLE `qbc10`
  ADD CONSTRAINT `qbc10_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbc11`
--
ALTER TABLE `qbc11`
  ADD CONSTRAINT `qbc11_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbc12`
--
ALTER TABLE `qbc12`
  ADD CONSTRAINT `qbc12_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco1`
--
ALTER TABLE `qbco1`
  ADD CONSTRAINT `qbco1_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco2`
--
ALTER TABLE `qbco2`
  ADD CONSTRAINT `qbco2_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco3`
--
ALTER TABLE `qbco3`
  ADD CONSTRAINT `qbco3_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco4`
--
ALTER TABLE `qbco4`
  ADD CONSTRAINT `qbco4_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco5`
--
ALTER TABLE `qbco5`
  ADD CONSTRAINT `qbco5_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco6`
--
ALTER TABLE `qbco6`
  ADD CONSTRAINT `qbco6_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco7`
--
ALTER TABLE `qbco7`
  ADD CONSTRAINT `qbco7_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco8`
--
ALTER TABLE `qbco8`
  ADD CONSTRAINT `qbco8_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `qbco9`
--
ALTER TABLE `qbco9`
  ADD CONSTRAINT `qbco9_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `cour` (`courseid`);

--
-- Constraints for table `reg_fac`
--
ALTER TABLE `reg_fac`
  ADD CONSTRAINT `reg_fac_ibfk_1` FOREIGN KEY (`program`) REFERENCES `pro` (`program`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`rollno`) REFERENCES `reg_stu` (`rollno`),
  ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`paperid`) REFERENCES `generate_paper` (`paper_id`);

--
-- Constraints for table `schedule_exam`
--
ALTER TABLE `schedule_exam`
  ADD CONSTRAINT `schedule_exam_ibfk_1` FOREIGN KEY (`program`) REFERENCES `pro` (`program`),
  ADD CONSTRAINT `schedule_exam_ibfk_2` FOREIGN KEY (`year`) REFERENCES `yea` (`year`),
  ADD CONSTRAINT `schedule_exam_ibfk_3` FOREIGN KEY (`sem`) REFERENCES `semester` (`sem`),
  ADD CONSTRAINT `schedule_exam_ibfk_4` FOREIGN KEY (`course`) REFERENCES `cour` (`course`);

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`year`) REFERENCES `yea` (`year`),
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`program`) REFERENCES `pro` (`program`);

--
-- Constraints for table `store_paper`
--
ALTER TABLE `store_paper`
  ADD CONSTRAINT `store_paper_ibfk_1` FOREIGN KEY (`paperid`) REFERENCES `generate_paper` (`paper_id`);

--
-- Constraints for table `yea`
--
ALTER TABLE `yea`
  ADD CONSTRAINT `yea_ibfk_1` FOREIGN KEY (`program`) REFERENCES `pro` (`program`);
