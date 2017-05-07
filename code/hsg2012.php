<?php

/*
	Đây là file ví dụ về chức năng cung cấp việc xem điểm một cách tùy chọn, tức là bảng điểm nhập vào và xuất ra được định dạng theo ý muốn của người quản lí website chứ không theo khuôn mẫu mà website vốn có.
*/
session_start();

define('SQL_HOST_SPEC', 'localhost');				
define('SQL_USERNAME_SPEC', 'root');	
define('SQL_PWD_SPEC', '');			
define('SQL_DB_SPEC', 'hsg2012');					

include_once('config/config.php');
include_once('function/function.php');
include_once('class/mysql.php');
include_once('class/xtemplate/xtemplate.class.php');
if (!RUNTIME_DEV_MODE) {		error_reporting(E_ERROR | E_WARNING | E_PARSE);
}
$sql = new MySQL();
save_user_ip();

if (RUNTIME_MOBILE_DETECT) {
	$tpl = new XTemplate('template/hsg2012/mobile.tpl');
} else {
	$tpl = new XTemplate('template/hsg2012/pc.tpl');
}


$sql->log('HSG 2012', null);

$query = $sql->setquery('SELECT * FROM `team`');

$stt = 1;
while ($data = mysql_fetch_assoc($query)) {
	$tpl->set_autoreset();
	
	$tpl->assign('stt', $stt);		$stt++;
	$tpl->assign('sbd', $data['sbd']);
	$tpl->assign('hsname', $data['hsname']);
	$tpl->assign('birthday', $data['birthday']);
	$tpl->assign('hometown', $data['hometown']);
	$tpl->assign('class', $data['class']);
	$tpl->assign('subject', $data['subject']);
	$tpl->assign('point1', $data['point1']);
	
	if ($data['point2'] == 0) {
		$tpl->assign('point2', null);
		$tpl->assign('totalpoint', null);
	} else {
		$tpl->assign('point2', $data['point2']);
		$tpl->assign('totalpoint', $data['totalpoint']);
	}
	
	$tpl->assign('rank', $data['rank']);
	$tpl->assign('school', $data['school']);

	$tpl->parse('main.team');
}


$sub1 = array('toan', 'li', 'hoa', 'tin', 'sinh', 'anh', 'phap');
$sub2 = array('van', 'su', 'dia');


foreach ($sub1 as $sub) {
	$query = $sql->setquery("SELECT * FROM $sub");
	$stt = 1;
	while ($data = mysql_fetch_assoc($query)) {
		$tpl->set_autoreset();
		
		$tpl->assign("stt", $stt);		$stt++;
		$tpl->assign("sbd", $data["sbd"]);
		$tpl->assign("hsname", $data["hsname"]);
		$tpl->assign("birthday", $data["birthday"]);
		$tpl->assign("hometown", $data["hometown"]);
		$tpl->assign("class", $data["class"]);
		$tpl->assign("point1", $data["point1"]);
		$tpl->assign("point2", $data["point2"]);
		$tpl->assign("totalpoint", $data["totalpoint"]);
		$tpl->assign("rank", $data["rank"]);
		$tpl->assign("school", $data["school"]);

		$tpl->parse("main.$sub");
	}
}

foreach ($sub2 as $sub) {
	$query = $sql->setquery("SELECT * FROM $sub");
	$stt = 1;
	while ($data = mysql_fetch_assoc($query)) {
		$tpl->set_autoreset();
		
		$tpl->assign('stt', $stt);		$stt++;
		$tpl->assign('sbd', $data['sbd']);
		$tpl->assign('hsname', $data['hsname']);
		$tpl->assign('birthday', $data['birthday']);
		$tpl->assign('hometown', $data['hometown']);
		$tpl->assign('class', $data['class']);
		$tpl->assign('point', $data['point']);
		$tpl->assign('rank', $data['rank']);
		$tpl->assign('school', $data['school']);

		$tpl->parse("main.$sub");
	}
}

$sql->close();
define('TIME_END', microtime(true));
$sec =	round(TIME_END-TIME_START, 4);
	
$tpl->assign('sec', $sec);
$tpl->assign('current_date', current_date());
$tpl->parse('main');
$tpl->out('main');

?>