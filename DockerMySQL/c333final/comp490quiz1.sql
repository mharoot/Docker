-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2017 at 12:55 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.1.10-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comp490quiz1`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(9) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`) VALUES
(1, 'If it is important to have a very detailed specification and design before moving to implementation then you probably need to use an agile approach. ', 0),
(2, 'If it is important to have a very detailed specification and design before 	moving to implementation then you probably need to use a plan-driven approach. ', 1),
(3, 'An incremental delivery strategy, is one where you deliver the software to customers and get rapid feedback from them. ', 1),
(4, 'An plan driven strategy, is one where you deliver the software to customers and get rapid feedback from them. ', 0),
(5, 'Agile 	methods are most effective when the system can be developed with a small co-located team who can communicate informally. ', 1),
(6, 'Agile methods are most effective when the system can be developed with a large co-located team who can communicate informally. ', 0),
(7, 'Plan driven methods are most effective when the system can be developed with a small co-located team who can communicate informally. ', 0),
(8, 'Plan driven methods are most effective when the system can be developed with a large co-located team who can communicate informally. ', 1),
(9, 'Rapid software development is where the specification, design, and 	implementation are inter-leaved. ', 1),
(10, 'In Rapid software development user interfaces are often developed using an IDE and graphical toolset. ', 1),
(11, 'In Rapid software development a system is developed as a series of versions with stakeholders involved in version evaluation. ', 1),
(12, 'Plan driven development focuses on the code rather than the design. ', 0),
(13, 'Agile development focuses on the code rather than the design. ', 1),
(14, 'In agile development, individuals and interactions is valued more than processes and tools. ', 1),
(15, 'In agile development, processes and tools is valued more than 	individuals and interactions. ', 0),
(16, 'In agile development, a working system is valued more than a comprehensive 	documentation. ', 1),
(17, 'In agile development, a comprehensive documentation is valued more than a working system. ', 0),
(18, 'In agile development, customer collaboration is valued more than controlled negotiation. ', 1),
(19, 'In agile development, controlled negotiation is valued more than 	customer collaboration. ', 0),
(20, 'In agile development, responding to change is valued more than 	following a plan. ', 1),
(21, 'In agile development, following a plan is valued more than responding to change. ', 0),
(22, 'A plan-driven approach to software engineering is based around separate development stages with the outputs to be produced at each of these stages planned in advance.', 1),
(23, 'A agile-driven approach to software engineering is based around separate development stages with the outputs to be produced at each of these stages planned in advance.', 0),
(24, 'In an agile-driven approach the specification, design, implementation and testing are inter-leaved and the outputs from the development process are decided through a process of negotiation during the software development process.', 1),
(25, 'In an plan-driven approach the specification, design, implementation and testing are inter-leaved and the outputs from the development process are decided through a process of negotiation during the software development process.\n', 0),
(26, 'Extreme Programming (XP) takes an extreme approach to plan driven development.', 0),
(27, 'Extreme Programming (XP) takes an extreme approach to iterative development.', 1),
(28, 'In Test-first development, an automated unit test framework is used to write tests for a new piece of functionality before that functionality itself is implemented.', 1),
(29, 'In refactoring, all developers are expected to refactor the code continuously as soon as possible when code improvements are found. This keeps the code simple and maintainable.', 1),
(30, 'In extreme programming (XP), user requirements are expressed as scenarios or user stories', 1),
(31, 'Extreme programming proposes constant code improvement (refactoring) to make changes easier when they have to be implemented.', 1),
(32, 'Agile methods are incremental development methods that focus on rapid development, frequent releases of the software, reducing process overheads and producing high-quality code. They involve the customer directly in the development process.', 1),
(33, 'Plan-driven methods are incremental development methods that focus on rapid development, frequent releases of the software, reducing process overheads and producing high-quality code. They involve the customer directly in the development process.', 0),
(34, 'Extreme programming is a well-known plan-driven method that integrates a range of good programming practices such as frequent releases of the software, continuous software improvement and customer participation in the development team.', 0),
(35, 'Extreme programming is a well-known agile method that integrates a range of good programming practices such as frequent releases of the software, continuous software improvement and customer participation in the development team.', 1),
(36, 'Extreme Programing (XP) testing features include Test-first development.  Incremental test development from scenarios.  User involvement in test development and validation.  Automated test harnesses are used to run all component tests each time that a new release is built.\r\n', 1),
(37, 'Plan-driven testing features include Test-first development.  Incremental test development from scenarios.  User involvement in test development and validation.  Automated test harnesses are used to run all component tests each time that a new release is built.\r\n', 0),
(38, 'In test-first development, only new tests are run automatically when new functionality is added, thus checking that the new functionality has not introduced errors.', 0),
(39, 'In test-first development, all previous and new tests are run automatically when new functionality is added, thus checking that the new functionality has not introduced errors.', 1),
(40, 'Test automation means that tests are written as executable components before the task is implemented ', 1),
(41, 'Test automation means that tests are written as executable components after the task is implemented ', 0),
(42, 'Measurements suggest that development productivity with pair programming is similar to that of two people working independently.', 1),
(43, 'Pair Programming supports the idea of collective ownership and responsibility for the system. ', 1),
(44, 'In Agile Project Management, the standard approach to project management is plan-driven. Managers draw up a plan for the project showing what should be delivered, when it should be delivered and who will work on the development of the project deliverables. ', 1),
(45, 'Agile project management requires a different approach, which is adapted to incremental development and the particular strengths of agile methods. ', 1),
(46, 'The Scrum approach is a general agile method but its focus is on managing iterative development rather than specific agile development practices.', 1),
(47, 'In large systems development, where several systems are integrated to create a system, a significant fraction of the development is concerned with system configuration rather than original code development. ', 1),
(48, '‘Scaling out’ is concerned with how agile methods can be introduced across a large organization with many years of software development experience.', 1),
(49, '‘Scaling up’ is concerned with how agile methods can be introduced across a large organization with many years of software development experience.', 0),
(50, '‘Scaling up’ is concerned with using agile methods for developing large software systems that cannot be developed by a small team.', 1),
(51, '‘Scaling out’ is concerned with using agile methods for developing large software systems that cannot be developed by a small team.', 0),
(52, 'Scaling agile methods for large systems is difficult. Large systems need up-front design and some documentation.', 1),
(53, 'The Scrum method is an agile method that provides a project management framework. It is centered round a set of sprints, which are fixed time periods when a system increment is developed. ', 1),
(54, 'A particular strength of extreme programming is the development of automated tests before a program feature is created. All tests must successfully execute when an increment is integrated into a system.', 1),
(55, 'Agile does not mean “No Process”, Agile is “refining a process that makes sense”\r\n', 1),
(56, 'In agile development, a working system is the primary measure of progress.', 1),
(57, 'Velocity – measures the number of user stories completed in a sprint and can be used to predict the completion date range.', 1),
(58, 'Velocity – a measure of the “goodness” of the software that is used to establish the need for refactoring.', 0),
(59, 'Cyclomatic complexity – a measure of the “goodness” of the software that is used to establish the need for refactoring.', 1),
(60, 'Cyclomatic complexity – measures the number of user stories completed in a sprint and can be used to predict the completion date range. ', 0),
(61, 'Management change - There will be a change of organizational management with different priorities.', 1),
(62, 'Staff turnover - Experienced staff will leave the project before it is finished.', 1),
(63, 'Task-oriented-The motivation for doing the work is the work itself\r\n', 1),
(64, 'Self-oriented - The work is a means to an end which is the achievement of individual goals - e.g. to get rich, to play tennis, to travel etc.\r\n', 1),
(65, 'Interaction-oriented - The principal motivation is the presence and actions of co-workers. People go to work because they like to go to work.\r\n', 1),
(66, 'Task-oriented - The work is a means to an end which is the achievement of individual goals - e.g. to get rich, to play tennis, to travel etc.\r\n', 0),
(67, 'Interaction-oriented - The motivation for doing the work is the work itself\r\n', 0),
(68, 'Software engineering is concerned with cost-effective quantity software development.', 0),
(69, 'Software engineering is concerned with cost-effective quality software development.', 1),
(70, 'Embedded control systems, military system software, air traffic control software, and traffic monitoring systems are all examples of Customized Products.\r\n', 0),
(71, 'Embedded control systems, military system software, air traffic control software, and traffic monitoring systems are all examples of Generic Products.', 1),
(72, 'PC software such as graphics programs, project management tools; CAD software; and software for specific markets such as appointment systems for dentists are all examples of Customized Products.', 1),
(73, 'PC software such as graphics programs, project management tools; CAD software; and software for specific markets such as appointment systems for dentists are all examples of Generic Products.', 1),
(74, 'Generic products are generally stand-alone systems that are marketed and sold to any customer who wishes to buy them e.g. phones, tablets etc.', 1),
(75, 'Customized products are generally stand-alone systems that are marketed and sold to any customer who wishes to buy them e.g. phones, tablets etc.', 0),
(76, 'Customized products are generally software that is commissioned by a specific customer to meet their own domain needs. ', 1),
(77, 'Generic products are generally software that is commissioned by a specific customer to meet their own domain needs. ', 0),
(78, 'For Generic Products the specification of what the software should do is owned by the software developer and decisions on software changes/upgrades are made by the developer.', 1),
(79, 'For Customized Products the specification of what the software should do is owned by the software developer and decisions on software changes/upgrades are made by the developer.', 0),
(80, 'For Generic Products the specification of what the software should do is owned by the customer for the software and they make decisions on software changes/upgrades that are required.\r\n', 0),
(81, 'For Customized Products the specification of what the software should do is owned by the customer for the software and they make decisions on software changes/upgrades that are required.\r\n', 1),
(82, 'The difference between software engineering and system engineering is Software engineering is concerned with all aspects of computer-based systems development including hardware, software, and process engineering.  System engineering is part of this more general process.', 0),
(83, 'The difference between software engineering and system engineering is System engineering is concerned with all aspects of computer-based systems development including hardware, software, and process engineering.   Software engineering is part of this more general process.', 1),
(84, 'Software development, where the software is designed and implemented.', 1),
(85, 'Software development, where the software is updated/modified to reflect changing customer and market requirements.', 0),
(86, 'Software evolution (maintenance), where the software is updated/modified to reflect changing customer and market requirements.', 1),
(87, 'Software verification/validation, where the software is checked to ensure that it is what the customer requires.', 1),
(88, 'Software specification, where customers and engineers define the software that is to be produced and the constraints on its operation.', 1),
(89, 'Heterogeneity/Heterogeneous computing is a concept where systems are required to operate as distributed systems across networks that include different types of computer and mobile devices. \r\n', 1),
(90, 'Stand-alone applications are application systems that run on a local computer, such as a PC. They include all necessary functionality and do not need to be connected to a network. \r\n', 1),
(91, 'Interactive transaction-based applications are application systems that run on a local computer, such as a PC. They include all necessary functionality and do not need to be connected to a network. \r\n', 0),
(92, 'Interactive transaction-based applications are applications that execute on a remote computer and are accessed by users from their own PCs or terminals. These include web applications such as e-commerce applications. ', 1),
(93, 'Stand-alone applications are applications that execute on a remote computer and are accessed by users from their own PCs or terminals. These include web applications such as e-commerce applications. ', 0),
(94, 'Embedded control systems are software control systems that control and manage hardware devices. Numerically, there are probably more embedded systems than any other type of system. \r\n', 1),
(95, 'Batch processing systems are systems that are developed by scientists and engineers to model physical processes or situations, which include many, separate, interacting objects.  Manufacturing, space systems etc.\r\n', 0),
(96, 'Batch processing systems are systems that are primarily for personal use and which are intended to entertain the user.  Games, social networking etc.\r\n\r\n', 0),
(97, 'Batch processing systems are business systems that are designed to process data in large batches. They process large numbers of individual inputs to create corresponding outputs, e.g. accounting systems\r\n\r\n', 1),
(98, 'Entertainment systems are business systems that are designed to process data in large batches. They process large numbers of individual inputs to create corresponding outputs, e.g. accounting systems\r\n', 0),
(99, 'Entertainment systems are systems that are developed by scientists and engineers to model physical processes or situations, which include many, separate, interacting objects.  Manufacturing, space systems etc.', 0),
(100, 'Entertainment systems are systems that are primarily for personal use and which are intended to entertain the user.  Games, social networking etc.', 1),
(101, 'Systems for modeling and simulation are systems that are developed by scientists and engineers to model physical processes or situations, which include many, separate, interacting objects.  Manufacturing, space systems etc.', 1),
(102, 'Data collection systems are systems that collect data from their environment using a set of sensors and send that data to other systems for processing.  Satellite systems.\r\n', 1),
(103, 'Data collection systems are systems that are composed of a number of other software systems.', 0),
(104, 'Systems of systems are systems that are composed of a number of other software systems.  Command and Control systems.', 1),
(105, 'Systems of systems are systems that collect data from their environment using a set of sensors and send that data to other systems for processing.  Satellite systems.', 0),
(106, 'A software process model is an abstract representation of a process. It presents a description of a process from some particular perspective.', 1),
(107, 'Specification: is defining the organization of the system and implementing the system;', 0),
(108, 'Specification: is defining what the system should do;', 1),
(109, 'Validation: is changing the system in response to changing customer needs.\r\n', 0),
(110, 'Validation: is checking that it does what the customer wants;\r\n', 1),
(111, 'Evolution/Maintenance: is changing the system in response to changing customer needs.\r\n', 1),
(112, 'Evolution/Maintenance: is checking that it does what the customer wants;\r\n', 0),
(113, 'Design and implementation – defining the organization of the system and implementing the system;', 1),
(114, 'Design and implementation –  defining what the system should do;', 0),
(116, 'There are no right or wrong software processes.\r\n', 1),
(117, 'In Plan-driven processes, planning is incremental making it easier to change the process to reflect changing customer requirements. \r\n', 0),
(118, 'Plan-driven processes are processes where all of the process activities are planned in advance and progress is measured against this plan. ', 1),
(119, 'In agile processes, planning is incremental making it easier to change the process to reflect changing customer requirements. \r\n', 1),
(120, 'Agile processes are processes where all of the process activities are planned in advance and progress is measured against this plan.', 0),
(121, 'In practice, most practical processes include elements of both plan-driven and agile approaches. \r\n', 1),
(122, 'Reuse-oriented software engineering is where a system is assembled from existing components. It may only be plan-driven.', 0),
(123, 'Reuse-oriented software engineering a system is assembled from existing components. It may only be  agile.\r\n', 0),
(124, 'Reuse-oriented software engineering a system is assembled from existing components. It may be plan-driven or agile.\r\n', 1),
(125, 'The main drawback of the agile model is the difficulty of accommodating change after the process is underway. In principle, a phase has to be complete before moving onto the next phase.', 0),
(126, 'The main drawback of the waterfall model is the difficulty of accommodating change after the process is underway. In principle, a phase has to be complete before moving onto the next phase.', 1),
(127, 'In Incremental development the system structure tends to degrade as new increments are added.  ', 1),
(128, 'The four basic process activities of specification, development, verification/validation and evolution (maintenance) are organized differently in different development processes e.g. the waterfall model, they are organized in sequence, whereas in incremental development they are inter-leaved. ', 1),
(129, 'The four basic process activities of specification, development, verification/validation and evolution (maintenance) are organized differently in different development processes e.g. in incremental devlopment, they are organized in sequence, whereas in the waterfall model they are inter-leaved. ', 0),
(130, 'Architectural design is where you identify the overall structure of the system, the principal components (sometimes called sub-systems or modules), their relationships and how they are distributed.', 1),
(131, 'Interface design is where you define the interfaces between system components. ', 1),
(132, 'Component design is where you take each system component and design how it will operate. ', 1),
(133, 'Database design is where you design the system data structures and how these are to be represented in a database. ', 1),
(134, 'Architectural design is where you take each system component and design how it will operate. ', 0),
(135, 'Component design is where you identify the overall structure of the system, the principal components (sometimes called sub-systems or modules), their relationships and how they are distributed.', 0),
(136, 'Validation and Verification (V&V) is intended to show that a system conforms to its specification (meets requirements) and provides the functionality that the  customer needs.', 1),
(137, 'Development and/or component testing is when Individual components are tested independently and components may be functions or objects or coherent groupings of these entities.', 1),
(138, 'System testing is when there is a testing of the system as a whole. Testing of emergent properties is particularly important.', 1),
(139, 'Acceptance testing is testing with customer data to check that the system meets the customer’s needs.\r\n', 1),
(140, 'Development and/or component testing is when there is a testing of the system as a whole. Testing of emergent properties is particularly important.', 0),
(141, 'System testing is when Individual components are tested independently and components may be functions or objects or coherent groupings of these entities.', 0),
(142, 'A prototype is an initial version of a system used to demonstrate concepts and try out design options.', 1),
(143, 'A prototype can be used in the requirements engineering process to help with requirements elicitation and validation.', 1),
(144, 'A prototype can be used in the design processes to explore options and develop a UI design.', 1),
(145, 'A prototype can be used in the testing process to run back-to-back tests.\r\n', 1),
(146, 'Prototype Development focuses on non-functional requirements such as reliability and security.', 0),
(147, 'Prototype Development focuses on functional rather than non-functional requirements such as reliability and security', 1),
(148, 'The Spiral model introduces a risk-driven approach to development.', 1),
(149, 'The RUP phases are:<br>\r\nInception - Establish the business case for the system.<br>\r\nElaboration - Develop an understanding of the problem domain and the system architecture.<br>\r\nConstruction - System design, programming and testing.<br>\r\nTransition - Deploy the system in its operating environment.<br>\r\n', 1),
(150, 'RUP In-phase iteration is where each phase is iterative with results developed incrementally.', 1),
(151, 'RUP In-phase iteration is where the whole set of phases may be enacted incrementally.\r\n', 0),
(152, 'RUP Cross-phase iteration is the whole set of phases may be enacted incrementally.\r\n', 1),
(153, 'RUP Cross-phase iteration is where each phase is iterative with results developed incrementally.', 0),
(154, 'Software Project Management is concerned with activities involved in ensuring that software is delivered on time and on schedule and in accordance with the requirements of the organisations developing and procuring the software.', 1),
(155, 'Project risks affect schedule or resources;', 1),
(156, 'Product risks affect the quality or performance of the software being developed;', 1),
(157, 'Business risks affect the organization developing or procuring the software.\r\n', 1),
(158, 'Project risks affect the organization developing or procuring the software.\r\n', 0),
(159, 'Business risks affect schedule or resources;\r\n', 0),
(160, 'The Risk Management Process consists of:<br>\r\nRisk identification<br>\r\nRisk analysis<br>\r\nRisk planning<br>\r\nRisk monitoring\r\n', 1),
(161, 'Risk management is now recognized as one of the most important project management tasks.', 1),
(162, 'Agile development is always based around an informal group on the principle that formal structure inhibits information exchange.', 1),
(163, 'Plan-driven development is always based around an informal group on the principle that formal structure inhibits information exchange', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
