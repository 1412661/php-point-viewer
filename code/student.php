<?php


/*
	Đây là file cung cấp chức năng xem kết quả học tập của học sinh
*/

session_start();

include_once('config/config.php');
include_once('function/function.php');
include_once('function/func_student.php');

include_once('class/mysql.php');
include_once('class/xtemplate/xtemplate.class.php');


if (!RUNTIME_DEV_MODE) {
	error_reporting(E_ERROR | E_WARNING | E_PARSE);
}

$sql = new MySQL();

save_user_ip();

if (RUNTIME_MOBILE_DETECT) {
	$tpl = new XTemplate('template/mobile/student.tpl');
} else {
	$tpl = new XTemplate('template/student.tpl');
}



/* tạo list năm học */
$search = $sql->setquery('SELECT DISTINCT `year` FROM `db_info`');

$year_ = array();

$year_option = null;

if (mysql_num_rows($search) > 0) {
	while ($year = mysql_fetch_row($search)) {
		if ($year[0] == $_GET['year']) {
			$year_option .= '<option value="'.$year[0].'" selected>'.$year[0].'</option>'."\n";
		} else {
			$year_option .= '<option value="'.$year[0].'">'.$year[0].'</option>'."\n";
		}
		$year_[] = $year[0];
	}
	$tpl->assign('year_option', $year_option);
}
/*********************/

$year = $_GET['year'];
$hsname = sql_filter($_GET['hsname']);
$class = sql_filter($_GET['class']);
$sbd = $_GET['sbd'];


function return_error($error) {
	global $tpl, $sql, $hsname, $class, $sbd;
	
	$sql->close();
	
	$tpl->assign('error_mess', $error);
	$tpl->parse('main.input_error');
	$tpl->parse('main.notice');
	page_view(true, false, true);
	
	$tpl->assign('sbd_', $sbd);
	$tpl->assign('hsname', $hsname);
	$tpl->assign($class, 'selected');
	
	$tpl->parse('main');
	$tpl->out('main');
	
	die();
}

if (intval($_GET['submit']) == 1) {
	if (!var_set($year)) {
		return_error('Bạn chưa nhập năm học !');
	} elseif (!in_array($year, $year_)) {
		return_error('Không tồn tại năm học '.$year.' trong cơ sở dữ liệu !');
	} elseif (!var_set($hsname)) {
		return_error('Bạn chưa nhập tên học sinh !');
	} elseif (!is_number($sbd)) {
		return_error('Số báo danh phải là số nguyên !');
	}
	
	$db_list = get_db_list($year);
	$hs_list = search_hs($sbd, $hsname, $class);
	
	if (count($hs_list) == 0) {
		$error_sbd = ($sbd == null) ? null : ' có số báo danh ['.$sbd.']';
		$error_class = ($class == null) ? null : ' ở lớp ['.$class.']';
		
		return_error('Không tìm thấy học sinh có tên ['.$hsname.']'.$error_sbd.$error_class.' !');
	} elseif (count($hs_list) == 1) {
		export_hs($hs_list[0]['sbd'], $hs_list[0]['hsname'], $hs_list[0]['class']);
		$sql->log('STUDENT', '[SINGLE STUDENT] - Năm học: ['.$year.'], Tên học sinh: ['.standard_name($hs_list[0]['hsname']).'], Lớp: ['.$hs_list[0]['class'].'], Số báo danh: ['.$hs_list[0]['sbd'].']');
	} else {
		export_hs_list($hs_list);
		$sql->log('STUDENT', '[STUDENT LIST] - Năm học: ['.$year.'], Tên học sinh: ['.$hsname.'], Lớp: ['.$class.'], Số báo danh: ['.$sbd.']');
	}
	
	$tpl->assign('sbd_', $sbd);
	if (count($hs_list) == 1) {
		$tpl->assign('hsname', standard_name($hs_list[0]['hsname']));
	} else {
		$tpl->assign('hsname', $hsname);
	}
	$tpl->assign($class, 'selected');
} else {
	$tpl->parse('main.notice');
}

$sql->close();

define('TIME_END', microtime(true));
$sec =	round(TIME_END-TIME_START, 4);
	
$tpl->assign('sec', $sec);
$tpl->assign('current_date', current_date());

$tpl->parse('main');
$tpl->out('main');


?>