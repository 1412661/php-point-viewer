<?php

$query[] = 'SET NAMES \'UTF8\';';

$query[] = 'DROP TABLE IF EXISTS `log`';
$query[] = 'CREATE TABLE `log` (
	`id` int NOT NULL auto_increment,
	`act` varchar(100) NOT NULL,
	`act_info` varchar(1000) default \'[No info]\',
	`ip` varchar(40) NOT NULL,
	`time` varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';

$query[] = 'DROP TABLE IF EXISTS `contact`';
$query[] = 'CREATE TABLE `contact` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(1000) NOT NULL,
	`address` varchar(1000) default \'[No address]\',
	`subject` varchar(1000) NOT NULL,
	`content` varchar(1000) NOT NULL,
	`ip` varchar(40) NOT NULL,
	`time` varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';

$query[] = 'DROP TABLE IF EXISTS `db_info`';
$query[] = 'CREATE TABLE `db_info` (
	`id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(1000) NOT NULL,
	`year` varchar(1000) NOT NULL,
	`subject` varchar(1000) NOT NULL,
	`row_count` int NOT NULL,
	`comment` varchar(1000) default \'[No comment]\',
	`time` varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';

$query[] = 'DROP TABLE IF EXISTS `log_ip`';
$query[] = 'CREATE TABLE `log_ip` (
	`id` int NOT NULL AUTO_INCREMENT,
	`ip` varchar(40) NOT NULL,
	`time` varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';

$query[] = 'DROP TABLE IF EXISTS `users`';
$query[] = 'CREATE TABLE `users` (
	`id` int NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL,
	`password` varchar(100) NOT NULL,
	`add_by` varchar(100) NOT NULL,
	`time` varchar(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;';

$query[] = 'DROP TABLE IF EXISTS `setting`';
$query[] = 'CREATE TABLE `setting` (
	`id` int NOT NULL UNIQUE AUTO_INCREMENT,
	`name` varchar(200) UNIQUE UNIQUE NOT NULL,
	`description` varchar(1000),
	`value` varchar(1000) NOT NULL,
	`updated` varchar(100),
	PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET = UTF8;';


//INSERT DATA
$time = current_time();

$query[] = 'INSERT INTO `users` VALUES(NULL, \'admin\', \''.md5('admin').'\', \'[Installer]\', \''.$time.'\')';

$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_SQL_QUERY\', \'Cho phép gửi truy vấn SQL\', \'1\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_OPTIMIZE_OUTPUT\', \'Giản lược tối đa dữ liệu đầu ra của website\', \'1\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_DEV_MODE\', \'Chế độ phát triển, chỉ bật khi debug lỗi\', \'0\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_STOP_COUNT\', \'Ngừng bộ đếm truy cập, sử dụng khi có người cố tình phá hoại hoặc làm sai lệch bộ đếm truy cập\', \'0\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_GET_HS_DTB_0\', \'Tính luôn học sinh bị điểm 0 (có thể do không kiểm tra) khi xếp hạng lớp\', \'0\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'RUNTIME_MOBILE_DETECT\', \'Sử dụng giao diện cho thiết bị di động\', \'auto\', \''.$time.'\')';

$query[] = 'INSERT INTO `setting` VALUES (NULL, \'UPLOAD_FNAME_RANDOM\', \'Đặt một tên ngẫu nhiên cho các file cơ sở dữ liệu được người dùng download\', \'0\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'UPLOAD_FNAME_APPEND_STRING\', \'Thêm chuỗi ngẫu nhiên vào sau tên file cơ sở dữ liệu được upload lên\', \'\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'UPLOAD_FOLDER\', \'Thư mục chứa cơ sở dữ liệu đã được upload\', \'upload/\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'DOWNLOAD_ALLOW_REFERRER\', \'Cho phép referrer\', \'0\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'SETUP_DB_MAX_FILE_SIZE\', \'Kích thước tối đa của file chứa cơ sở dữ liệu. Tính bằng Kilobyte. Kích thước này phải nhỏ hơn kích thước file tối đa được upload mà server cho phép\', \'1500\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'NOTICE_RIGHT_BOX\', \'Thông báo dưới bảng nhỏ\', \'Chức năng mới - <a href="student.php">Xem kết quả học tập</a>\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'NOTICE_MARQUEE\', \'Thông báo chữ chạy\', \'Chức năng mới - <a href="student.php">Xem kết quả học tập</a>\', \''.$time.'\')';

$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_SMTP_USERNAME\', \'Tên đăng nhập dịch vụ JangoSMTP\', \'quocbao9996\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_SMTP_PASSWORD\', \'Mật khẩu dịch vụ JangoSMTP\', \'Admin2355\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_FROM_ADDRESS\', \'Địa chỉ mail người gửi\', \'phppv.quocbao747@gmail.com\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_FROM_NAME\', \'Tên người gửi mail\', \'PHPPV Mailer\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_DES_ADDRESS\', \'Địa chỉ mail người nhận\', \'quocbao747@gmail.com\', \''.$time.'\')';
$query[] = 'INSERT INTO `setting` VALUES (NULL, \'MAIL_DES_NAME\', \'Tên người nhận mail\', \'quocbao9996\', \''.$time.'\')';



?>