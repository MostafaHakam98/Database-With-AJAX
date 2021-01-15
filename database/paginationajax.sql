CREATE TABLE `course` (
  `course_id` int(7) NOT NULL,
  `course_name` varchar(31) NOT NULL,
  `course_description` varchar(255) NOT NULL,
  `department_id` int(7) NOT NULL,
  `professor_id` int(7) NOT NULL
); 

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `department_id`, `professor_id`) VALUES
(1000, 'Discrete Control Systems', 'Principles of design including elements design, process and/or a system related to specific disciplines. ', 1, 50),
(1100, 'Architectural Design', 'The development of architectural concept, character and language is of particular importance. Course material combined with an understanding of appropriate environmental systems is a must.', 2, 38),
(1300, 'Database', 'The course covers topics related to relational Database analysis, design, normalization, and implementation. Case studies are discussed.', 6, 32),
(1500, 'Materials Technology', 'Revision of engineering statistics, sampling distributions, point estimators, confidence interval estimations. Testing of hypothesis, linear regression, Multiple regression, Analysis of variance.', 8, 46),
(1700, 'Analog Signal Processing', 'Linear and nonlinear wave shaping, relaxation oscillators, sweep generator, analog filters.', 7, 40),
(2000, 'Robotics', 'Concepts and theories of mathematics and sciences, appropriate to the discipline.', 1, 47),
(2100, 'Music and Civilization', 'This course is an Introduction to the concepts, , materials and techniques of furniture. .', 2, 38),
(2300, 'Computer Graphics', 'Introduction, history and survey of graphics applications. Overview of graphics systems and output devices. Output primitives including points, lines, circles, splines, area filling, and character generation. Attributes of output primitives.', 6, 5),
(2500, 'Work Design', '	Improvement of productivity through designing and developing various work centers. The detailed restudying of work centers to find better ways to produce the products and/or improve their quality.', 8, 16),
(2700, 'Operations Research', 'Wave equation, Uniform plan waves, Wave propagation in free space, perfect dielectric, lossy and good conductors, skin effect, surface impedance. ', 7, 10),
(3000, 'Modern Control Systems', 'Principles of design including elements design, process and/or a system related to specific disciplines.', 1, 27),
(3100, 'Furniture Design', 'Facing, cladding and curtain walls for external walls as well as suspended ceilings, light partitions and internal wall treatments of internal spaces are the main topics of this course.', 2, 38),
(3300, 'Practical Training', 'The course covers topics related to relational Database analysis, design, normalization, and implementation. Case studies are discussed.', 6, 2),
(3500, 'Art Appreciation', 'Revision of engineering statistics, sampling distributions, point estimators, confidence interval estimations. Testing of hypothesis, linear regression, Multiple regression, Analysis of variance.', 8, 6),
(4000, 'Electric Drives', 'Principles of design including elements design, process and/or a system related to specific disciplines.', 1, 50),
(4100, 'Reinforced Concrete Structure', 'The development of architectural concept, character and language is of particular importance. Course material combined with an understanding of appropriate environmental systems is a must.', 2, 4),
(4700, 'Electromagnetic Transmitting Me', 'Linear and nonlinear wave shaping, relaxation oscillators, sweep generator, analog filters.', 7, 20),
(5000, 'High Voltage Engineering', 'Concepts and theories of mathematics and sciences, appropriate to the discipline. Technical language and report writing. Contemporary engineering topics.', 1, 12),
(5100, 'Building Technology', 'The development of architectural concept, character and language is of particular importance. Course material combined with an understanding of appropriate environmental systems is a must.', 2, 9),
(5300, 'Operating Systems', 'Is to have an in depth knowledge of the architecture and programming of 8-bit and 16-bit Intel Microprocessors and to study how to interface various peripheral devices with them.', 6, 22),
(6000, 'Electrical Power Stations', 'Principles of design including elements design, process and/or a system related to specific disciplines. Current engineering technologies as related to disciplines.', 1, 43),
(6100, 'History of Architectural', 'This course is an Introduction to the concepts, , materials and techniques of furniture. .', 2, 8),
(6300, 'Microprocessors', 'The course covers topics related to relational Database analysis, design, normalization, and implementation. Case studies are discussed.', 6, 12),
(6500, 'Measurments', 'Revision of engineering statistics, sampling distributions, point estimators, confidence interval estimations. Testing of hypothesis, linear regression, Multiple regression, Analysis of variance.', 8, 46),
(6700, 'Modern Control Processing', 'Linear and nonlinear wave shaping, relaxation oscillators, sweep generator, analog filters.', 7, 40),
(7000, 'Automated Industrial Systems', 'Basics of information and communication technology (ICT). Principles of design including elements design, process and/or a system related to specific disciplines.', 1, 26),
(7100, 'Computer Graphics', 'The development of architectural concept, character and language is of particular importance. Course material combined with an understanding of appropriate environmental systems is a must.', 2, 18),
(8000, 'Power Systems', 'Concepts and theories of mathematics and sciences, appropriate to the discipline.', 1, 37),
(8100, 'Execution Design', 'Facing, cladding and curtain walls for external walls as well as suspended ceilings, light partitions and internal wall treatments of internal spaces are the main topics of this course.', 2, 48),
(8300, 'Pattern Recognition', 'Introduction, history and survey of graphics applications. Overview of graphics systems and output devices. Output primitives including points, lines, circles, splines, area filling, and character generation. Attributes of output primitives.', 6, 22),
(9000, 'Electromechanical Systems', 'Concepts and theories of mathematics and sciences, appropriate to the discipline.', 1, 4),
(9100, 'Soil Mechanics', 'This course is an Introduction to the concepts, materials and techniques of furniture.', 2, 28);

CREATE TABLE `department` (
  `department_id` int(7) NOT NULL,
  `department_name` varchar(63) NOT NULL
);

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'Electrical & Control Engineering'),
(2, 'Architectural Engineering'),
(3, 'Marine Engineering'),
(4, 'Construction Engineering'),
(5, 'Basic & Applied Science'),
(6, 'Computer Engineering'),
(7, 'Communications Engineering'),
(8, 'Industrial Engineering'),
(9, 'Mechatronics Engineering');

CREATE TABLE `professor` (
  `professor_id` int(7) NOT NULL,
  `professor_name` varchar(31) NOT NULL
);

INSERT INTO `professor` (`professor_id`, `professor_name`) VALUES
(1, 'Archy Matura'),
(2, 'Alvinia Meatche'),
(3, 'Ignatius Roderi'),
(4, 'Hanni Hoggetts'),
(5, 'Cathe Stibbs'),
(6, 'Torrie MacCrann'),
(7, 'Nicholas Walick'),
(8, 'Milty MacDonoug'),
(9, 'Kali MacRedmond'),
(10, 'Yetta Coppins'),
(11, 'Carlyn Laingmai'),
(12, 'Ernestine Gille'),
(13, 'Minny Nurny'),
(14, 'Abie Scaife'),
(15, 'Debera Snel'),
(16, 'Lauryn Waddam'),
(17, 'Chrysler Hammel'),
(18, 'Esmaria Hegge'),
(19, 'Cam Erik'),
(20, 'Humfrey Labbati'),
(21, 'Aggy Bielefeld'),
(22, 'Giacopo Oldford'),
(23, 'Maddy Lanahan'),
(24, 'Theresita Kitch'),
(25, 'Winnie Davidde'),
(26, 'Sherill Verrech'),
(27, 'Massimo Digg'),
(28, 'Egon Sandham'),
(29, 'Shirlene Trivet'),
(30, 'Rube Knowlson'),
(31, 'Bald Ravenhill'),
(32, 'Briana Hansom'),
(33, 'Lolita Duberry'),
(34, 'Elden Tremberth'),
(35, 'Thayne Prebble'),
(36, 'Ellary Wannell'),
(37, 'Sacha Basilone'),
(38, 'Ced Blazeby'),
(39, 'Mame Djordjevic'),
(40, 'Tana Tallent'),
(41, 'Vachel Keast'),
(42, 'Filia Vigne'),
(43, 'Vonni Instone'),
(44, 'Olive Willden'),
(45, 'Meridith Confai'),
(46, 'Bertram Klaesse'),
(47, 'Benn Allaway'),
(48, 'Dallis Kunes'),
(49, 'Eugenio Greguol'),
(50, 'Ali Huyche');


ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `professor_id` (`professor_id`);

ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

ALTER TABLE `professor`
  ADD PRIMARY KEY (`professor_id`);

ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`professor_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;