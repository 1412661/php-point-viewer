<?php/*	Đây là nơi có thể xem là vào chào đầu tiên khi người dùng truy cập vào hệ thống PHPPV*/session_start();include_once('config/config.php');include_once('function/function.php');include_once('class/mysql.php');include_once('class/xtemplate/xtemplate.class.php');if (!var_set($_SESSION['login'])) {	outpage('Bạn phải đăng nhập để sử dụng chức năng này !');}if (!RUNTIME_DEV_MODE) {	error_reporting(E_ERROR | E_WARNING | E_PARSE);}$sql = new MySQL();save_user_ip();page_view(true, false, false);$current_user = $_SESSION['user'];if (RUNTIME_MOBILE_DETECT) {	$tpl = new XTemplate('template/mobile/users.tpl');} else {	$tpl = new XTemplate('template/users.tpl');}if (intval($_POST['change_pass']) == 1) {	if ($_POST['old_pass'] == null) {		$tpl->assign('mess', 'Bạn phải nhập mật khẩu cũ !');		$tpl->parse('main.user_error');	} elseif ($_POST['new_pass'] == null) {		$tpl->assign('mess', 'Bạn phải nhập mật khẩu mới để đổi mật khẩu !');		$tpl->parse('main.user_error');	} elseif ($_POST['re_new_pass'] == null) {		$tpl->assign('mess', 'Bạn phải nhập lại mật khẩu mới !');		$tpl->parse('main.user_error');	} elseif ($_POST['new_pass'] <> $_POST['re_new_pass']) {		$tpl->assign('mess', 'Mật khẩu mới không khớp !');		$tpl->parse('main.user_error');	} else {		$old_pass = md5($_POST['old_pass']);		$new_pass = md5($_POST['new_pass']);		$re_new_pass = md5($_POST['re_new_pass']);				$query = $sql->setquery('SELECT * FROM `users` WHERE `username` = \''.$current_user.'\' AND `password` = \''.$old_pass.'\'');				$result = mysql_fetch_assoc($query);				if ($result['password'] <> $old_pass) {			$tpl->assign('mess', 'Mật khẩu cũ không chính xác !');			$tpl->parse('main.user_error');		} else {			$sql->log('CHANGE PASS', 'Tên tài khoản: ['.$current_user.']');						$tpl->assign('mess', 'Đổi mật khẩu thành công !');			$tpl->parse('main.user_success');			$sql->setquery('UPDATE `users` SET `password` = \''.$new_pass.'\', `time` = \''.addslashes(current_time()).'\' WHERE `username` = \''.$current_user.'\'');		}	}} elseif (intval($_POST['add_user']) == 1) {	if ($_POST['new_user'] == null) {		$tpl->assign('mess', 'Bạn phải nhập tên tài khoản cần thêm mới !');		$tpl->parse('main.user_error');	} else {		$new_user = sql_filter($_POST['new_user']);				$sql->log('ADD USER', 'Tạo bởi: ['.$current_user.'], Tài khoản được tạo: ['.$new_user.']');				$query = $sql->setquery('SELECT * FROM `users` WHERE `username` =\''.$new_user.'\'');				if (mysql_num_rows($query) <> 0) {			$tpl->assign('mess', 'Tên tài khoản đã tồn tại, xin vui lòng chọn tên khác !');			$tpl->parse('main.user_error');		} else {			//Mật khẩu mặc định: 123456			$tpl->assign('mess', 'Tài khoản <b>'.$new_user.'</b> đã được thêm thành công');			$tpl->parse('main.user_success');			$sql->setquery('INSERT INTO `users` VALUES(NULL, \''.$new_user.'\', \'e10adc3949ba59abbe56e057f20f883e\', \''.$current_user.'\', \''.addslashes(current_time()).'\');');		}	}}$query = $sql->setquery('SELECT * FROM `users`');while ($result = mysql_fetch_assoc($query)) {	$tpl->set_autoreset();		$tpl->assign('account_id', $result['id']);	$tpl->assign('account_name', $result['username']);	$tpl->assign('add_by', $result['add_by']);	$tpl->assign('last_update', $result['time']);		$tpl->parse('main.account');}$tpl->assign('username', $current_user);$tpl->assign('old_pass', $_POST['old_pass']);$tpl->assign('new_pass', $_POST['new_pass']);$tpl->assign('re_new_pass', $_POST['re_new_pass']);$tpl->assign('new_user', $_POST['new_user']);$sql->close();define('TIME_END', microtime(true));$sec =	round(TIME_END-TIME_START, 4);$tpl->assign('current_date', current_date());$tpl->assign('sec', $sec);$tpl->parse('main');$tpl->out('main');?>