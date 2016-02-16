CREATE TABLE `#__numbers` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `imageno` varchar(255) NOT NULL,
  `imageone` varchar(255) DEFAULT NULL,
  `imagetwo` varchar(255) DEFAULT NULL,
  `imagethree` varchar(255) DEFAULT NULL,
  `audionumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `#__slides` (
  `id` int(11) NOT NULL,
  `slide_no` varchar(255) NOT NULL,
  `slide_content` varchar(400) NOT NULL,
  `slide_formular` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `#__tbl_uploads` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `imageone` varchar(255) NOT NULL,
  `imagetwo` varchar(255) NOT NULL,
  `imagethree` varchar(255) NOT NULL,
  `audionumber` varchar(30) NOT NULL,
  `imageno` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE `#__test` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `imageno` varchar(255) NOT NULL,
  `imageone` varchar(255) NOT NULL,
  `imagetwo` varchar(255) NOT NULL,
  `imagethree` varchar(255) NOT NULL,
  `audionumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `#__numbers`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `#__slides`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slide_no` (`slide_no`);


ALTER TABLE `#__tbl_uploads`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `#__test`
  ADD PRIMARY KEY (`id`);



ALTER TABLE `#__numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `#__slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `#__tbl_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `#__test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

