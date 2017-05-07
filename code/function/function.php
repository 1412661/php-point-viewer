<?php
// NHÓM HÀM XỬ LÍ/CHUẨN HÓA DỮ LIỆU ******************************************************
function optimize_output($str) {
	$str = preg_replace('/[\r\n]*/', null, $str);	//Xóa like break
	$str = preg_replace('/\t*/', null, $str);		//Xóa kí tự "tab"
	$str = preg_replace('/<!--(.*)-->/Uis', null, $str); 	//Xóa comment trong html
	$str = clear_space($str); 			//Xóa kí tự rỗng
	//fix coding style
	$str = str_replace('" >', '">', $str);			//VD: <span id="#obj1" ></span>	-> <span id="#obj1"></span>
	$str = str_replace('" />', '"/>', $str);		//VD: <img src="image.jpg " /> -> <img src="image.jpg "/>
	//$str = str_replace('> <', '><', $str);		//Có thể làm sai lệch nội dung trang
	return $str;
}
//Chuyển tiếng Việt có dấu sang tiếng Việt không dấu
function uni2non_uni($str) {
	$uni_char = array(
		'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
		'd'=>'đ',
		'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
		'i'=>'í|ì|ỉ|ĩ|ị',
		'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
		'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
		'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
		'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|ẩ|Ẫ|Ậ',
		'D'=>'Đ',
		'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
		'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
		'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
		'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
		'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ'
		);		
	foreach ($uni_char as $non_uni_char => $uni) {
		$str = preg_replace("/$uni/", $non_uni_char, $str);
	}
	return $str;
}
//Xóa kí tự rỗng
function clear_space($str) {
	$str = preg_replace('/ * /', ' ', $str);
	$str = trim($str);
	return $str;
}
//Đếm số từ trong câu
function count_word($str) {
	if(!is_string($str)) {
		return 0;
	}	
	return count(explode(' ', $str));
}

//Lấy tên học sinh. VD: Nguyễn Quốc Bảo -> Quốc Bảo
function get_name($name, $num) {
	$getname = explode(' ', $name);
	if ($num > count($getname)) {
		return '';
	} else {
		$result = null;
		for ($i = (count($getname)-$num); $i <= (count($getname)-1); $i++) {
			$result .= $getname[$i].' ';
		}
		return rtrim($result, ' ');	}
}

//Chuẩn hóa tên về dạng viết hoa chữ đầu tiên của mỗi từ. VD: Quốc Bảo
function standard_name($str) {
	$str = clear_space($str);
	$str = mb_strtolower($str, 'UTF-8');
	$str = mb_convert_case($str, MB_CASE_TITLE, 'UTF-8');
	return $str;
}

//Tính phần trăm
function percent($number, $total, $round = false) {
	$percent = $number / $total * 100;
	if ($round) {
		return round($percent, $round);
	} else {
		return $percent;
	}
}
//Xóa kí tự đặc biệt
function clear_spec_char($data) {
	$spec_char = array('`', '~', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '=', '|', '[', ']', '{', '}', ';', ':', '"', "'", ',', '<', '.', '>', '/', '?', '*', chr(92)/*   char: \  */);
	return str_replace($spec_char, null, $data);
}
//Lọc input vào câu lệnh MySQL
function sql_filter($data) {
	//$data = trim(strip_tags($data));
	/*if (get_magic_quotes_gpc()) {
		$data = stripslashes($data);
	}*/
	$data = addslashes($data);
	return $data;
}

//Xóa kí tự không hợp lệ (cho việc đặt tên file)
function clear_invalid_fname($str) {
	$invalid_fname = array(
		chr(92), #char: \
		chr(47), #char: /
		chr(58), #char: :
		chr(42), #char: *
		chr(63), #char: ?
		chr(34), #char: "
		chr(62), #char: >
		chr(60), #char: <
		chr(124), #char: |
	);
	$str = str_replace($invalid_fname, null, $str);
	$str = str_replace(' ', '_', $str);
	return $str;
}

//Cho ý nghĩa của error code khi upload file (Update Database)
function upload_file_error($code) {
	if (($code > 8) or ($code < 0)) {
		return 'Unknow error';
	}
	switch($code) {
		case UPLOAD_ERR_OK:
			return false;
		case UPLOAD_ERR_INI_SIZE:
			return 'Kích thước file của bạn vượt quá kích thước file tối đa mà phiên bản PHP trên hệ thống cho phép ! (The uploaded file exceeds the upload_max_filesize directive in php.ini)';
		case UPLOAD_ERR_FORM_SIZE:
			return 'Kích thước file của bạn vượt quá kích thước form HTML của bạn cho phép upload ! (The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form)';
		case UPLOAD_ERR_PARTIAL:
			return 'Quá trình upload file đã bị gián đoạn ! (The uploaded file was only partially uploaded)';
		case UPLOAD_ERR_NO_FILE:	
			return 'Không có file nào được gửi đến hệ thống hoặc hệ thống chưa nhận được file bạn gửi ! (No file was uploaded)';
		case UPLOAD_ERR_NO_TMP_DIR:
			return 'Không tìm thấy thư mục temporary trên hệ thống ! (Missing a temporary folder)';
		case UPLOAD_ERR_CANT_WRITE:
			return 'Không thể lưu trữ file trên hệ thống ! (Failed to write file to disk)';		
		case UPLOAD_ERR_EXTENSION:
			return 'Phiên bản PHP trên hệ thống không chấp nhận phần mở rộng (file extension) của bạn ! (A PHP extension stopped the file upload. PHP does not provide a way to ascertain which extension caused the file upload to stop; examining the list of loaded extensions with phpinfo() may help)';
	}
	return false;
}

//Rút gọn tên
function reduce_name($sub_name) {
	$reduced = strtolower(str_replace(' ', null, uni2non_uni($sub_name)));
	return $reduced;
}

function explode_($delim, $str) {
	$arr = explode($delim, $str);
	$i = 1;	debug($arr);
	foreach ($arr as $val) {
		$result[$i] = $val;
		$i++;
	}
	return $result;	
}
// END NHÓM HÀM XỬ LÍ/CHUẨN HÓA DỮ LIỆU ////////////////////////////////////////






// NHÓM HÀM NHẬP/XUẤT DỮ LIỆU ***************************************************function outpage($error = null, $add_js = null) {	function db_id_2_class($db_id) {		global $sql;				if (mysql_num_rows($sql->setquery('SELECT `id` FROM `db_info` WHERE `id` = '.$db_id)) == 0) {			return false;		}				$search = $sql->setquery('SELECT `class` FROM `database_'.$db_id.'`');				if (mysql_num_rows($search) == 0) {			return false;		} else {			$result = mysql_fetch_row($search);			return intval($result[0]);		}	}		global $sql;			if (!is_resource($sql)) {		$sql = new MySQL();	}		if (RUNTIME_MOBILE_DETECT) {		$tpl = new XTemplate('template/mobile/trangchu.tpl');	} else {		$tpl = new XTemplate('template/trangchu.tpl');	}	$tpl->set_autoreset();	if ($add_js <> null) {		$tpl->assign('js', $add_js);		$tpl->parse('main.add_js');	}		$tpl->assign('access', show_count('access'));	$tpl->assign('view', show_count('view'));	$tpl->assign('error', show_count('error'));	if (var_set($error)) {		page_view(true, false, true);		$tpl->assign('error_mess', $error);		$tpl->parse('main.input_error');	} else {		page_view(true, false, false);	}	//generate db ID selector	$search = $sql->setquery('SELECT * FROM `db_info`');		if (mysql_num_rows($search) == 0) {		$tpl->parse('main.db_id_selector.db_empty');	} else {		$search1 = $sql->setquery('SELECT DISTINCT `year` FROM `db_info` ORDER BY `year`');		while ($res1 = mysql_fetch_assoc($search1)) {			$tpl->set_autoreset();						$tpl->assign('year', $res1['year']);			$search2 = $sql->setquery('SELECT * FROM `db_info` WHERE `year` = \''.$res1['year'].'\'');			while ($res2 = mysql_fetch_assoc($search2)) {				$tpl->set_autoreset();								$tpl->assign('db_id', $res2['id']);				$tpl->assign('db_info', $res2['name'].' ['.$res2['comment'].']');				$tpl->assign('kclass', db_id_2_class($res2['id']));								$tpl->parse('main.db_id_selector.year.db_list');			}						$tpl->parse('main.db_id_selector.year');		}	}	$tpl->parse('main.db_id_selector');	//Generate Database ID	if (var_set($_GET['db_id'])) {		$tpl->assign('db_id', $_GET['db_id']);				$db_id = intval($_GET['db_id']);		$kclass = db_id_2_class($db_id);		if ($kclass !== false) {			$tpl->assign('js', '$(\''.'#'.'db_id\').val('.$db_id.');   show_class('.$kclass.');');			$tpl->parse('main.add_js');		}	} else {		$tpl->assign('db_id', null);	}		$sql->close();		if (var_set($_GET['hsname'])) {		$tpl->assign('hsname', $_GET['hsname']);	}	if (var_set($_GET['class']))  {		$tpl->assign($_GET['class'], ' selected="selected"');	}	if (var_set($_GET['search_method'])) {		$tpl->assign($_GET['search_method'], ' checked="checked"');	}		$tpl->assign('notice_right', NOTICE_RIGHT_BOX);	if (!var_set($_SESSION['dialog'])) {		$tpl->parse('main.dialog');		$_SESSION['dialog'] = true;	}		$tpl->assign('marquee_text', NOTICE_MARQUEE);	$tpl->parse('main.index_page');	define('TIME_END', microtime(true));	$sec =	round(TIME_END-TIME_START, 4);	$tpl->assign('current_date', current_date());	$tpl->assign('sec', $sec);	$tpl->parse('main');	$tpl->out('main');	die();}
function replace_input_manage_db($template) {
	//Update db
	$template->assign('db_name', $_POST['db_name']);
	$template->assign('db_year', $_POST['db_year']);
	$template->assign('db_comment', $_POST['db_comment']);
	$template->assign('db_row_count', $_POST['db_row_count']);
	if ((is_array($_POST['subject'])) and (count($_POST['subject']) <> 0)) {
		foreach ($_POST['subject'] as $subject) {
			$template->assign(reduce_name($subject), 'checked="checked"');
		}
	}
	//Backup db
	$template->assign(substr($_POST['filetype'], 1), 'checked="checked"');	
	if ((is_array($_POST['storage'])) and (count($_POST['storage']) <> 0)) {
		if (count($_POST['storage']) == 2) {
			$template->assign('online', 'checked="checked"');
			$template->assign('offline', 'checked="checked"');
		} else {
			$template->assign($_POST['storage'][0], 'checked="checked"');
		}
	}
	if ((is_array($_POST['content'])) and (count($_POST['content']) <> 0)) {
		if (count($_POST['content']) == 2) {
			$template->assign('structure', 'checked="checked"');
			$template->assign('data', 'checked="checked"');
		} else {
			$template->assign($_POST['content'][0], 'checked="checked"');
		}
	}
	//SQL Query
	$template->assign('query', $_POST['query']);	
	return $template;
}
// END NHÓM HÀM NHẬP/XUẤT DỮ LIỆU /////////////////////////////////////////////////////





// BEGIN: NHÓM HÀM LẤY/TẠO DỮ LIỆU *************************************************************
function get_user_ip() {
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
		$ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
		$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
    } else {
		$ip = $_SERVER['REMOTE_ADDR'];
    }
    return $ip;
}
function show_count($mode) {
	switch ($mode) {		case 'access':
			return file_get_contents('config/data/count_access.txt');
			break;			
		case 'view':
			return file_get_contents('config/data/count_view.txt');
			break;
		case 'error':
			return file_get_contents('config/data/count_error.txt');
			break;	}
}

function file_list($dir) {
	if ($dir[strlen($dir)-1] != '/') {$dir[strlen($dir)] = '/';}
	if (!exist_dir($dir)) {return array();}
	$scanned_dir = array_diff(scandir($dir), array('..', '.'));
	$flist = array();
	foreach ($scanned_dir as $item) {
		if (is_file($dir.$item)) {			if (($item <> 'index.html') and ($item <> 'readme.txt')) {
				$flist[] = $item;			}
		}
	}
	asort($flist);
	if ($flist == array()) {
		return false;
	} else {
		return $flist;
	}
}
function get_upload_max_filesize_in_php_dot_ini() {
	$ini_maxsize = ini_get('upload_max_filesize');
	if (!is_numeric($ini_maxsize)) {
		if (strpos($ini_maxsize, 'K')) {
			return intval($ini_maxsize);
		} elseif (strpos($ini_maxsize, 'M')) {
			return intval($ini_maxsize)*1024;
		} elseif (strpos($ini_maxsize, 'G')) {
			return intval($ini_maxsize)*1024*1024;
		} elseif (strpos($ini_maxsize, 'T')) {
			return intval($ini_maxsize)*1024*1024*1024;
		} elseif (strpos($ini_maxsize, 'P')) {
			return intval($ini_maxsize)*1024*1024*1024*1024;
		}
	} else {
		return $ini_maxsize;
	}
}
function current_time() {
	return date('H:i:s d/m/Y');
}
function current_date() {
	$weekday_vi = array('Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ 7');
	$getday = getdate();
	return "{$weekday_vi[$getday['wday']]} ngày {$getday['mday']}/{$getday['mon']}/{$getday['year']} lúc ".date('H:i:s');
}
/*function pagelink() {
    $s = empty($_SERVER['HTTPS']) ? '' : ($_SERVER['HTTPS'] == 'on') ? 's' : '';
    $sp = strtolower($_SERVER['SERVER_PROTOCOL']);
    $protocol = substr($sp, 0, strpos($sp, '/')).$s;
    $port = ($_SERVER['SERVER_PORT'] == '80') ? '' : (':'.$_SERVER['SERVER_PORT']);	
    return $protocol.'://'.$_SERVER['SERVER_NAME'].$port.$_SERVER['REQUEST_URI'];
}*/
// END: NHÓM HÀM LẤY DỮ LIỆU ///////////////////////////////////////////////////////






// BEGIN: NHÓM HÀM KIỂM TRA ********************************************************function is_number($var) {	for ($i = 0; $i <= strlen($var)-1; $i++) {		if ((intval($var[$i]) == 0) and ($var[$i] <> '0')) {			return false;		}	}		return true;}
function exist_dir($dir_name = false, $path = './') {
	if (!$dir_name) {return false;}
	if (is_dir($path.$dir_name)) {return true;}
	$tree = glob($path.'*', GLOB_ONLYDIR);
	if (($tree) and (count($tree)>0)) {
		foreach($tree as $dir) {
			if (exist_dir($dir_name, $dir.'/'))	{return true;}
		}
	}
	return false;
}

function is_uni($str) {
	if (strlen($str) != strlen(utf8_decode($str))) {
		return true;
	} else {
		return false;
		}
}

function var_set($var) {
	if ((isset($var)) and (!empty($var)) and ($var != null)) {
		return true;
	} else {
		return false;
	}
}
// END: NHÓM HÀM KIỂM TRA /////////////////////////////////////////////////////////////////







// BEGIN: NHÓM HÀM THỰC HIỆN LỆNH *******************************************************
function page_view($access, $view, $error) {
	if (RUNTIME_STOP_COUNT) {
		reset_count();
	} else {
		if ($access) {
			$count = file_get_contents('config/data/count_access.txt');
			file_put_contents('config/data/count_access.txt', $count+1, LOCK_EX);
		}
		if ($view) {
			$count = file_get_contents('config/data/count_view.txt');
			file_put_contents('config/data/count_view.txt', $count+1, LOCK_EX);
		}
		if ($error) {
			$count = file_get_contents('config/data/count_error.txt');
			file_put_contents('config/data/count_error.txt', $count+1, LOCK_EX);
		}
	}	
}

function reset_count() {
	file_put_contents('config/data/count_access.txt', '0');
	file_put_contents('config/data/count_error.txt', '0');
	file_put_contents('config/data/count_view.txt', '0');
}

function del_all_file($dir, $ext) {
	if ($dir[strlen($dir)-1] != '/') {$dir[strlen($dir)] = '/';}
	$files = glob($dir.'*.'.$ext); 
	foreach($files as $file) {
		unlink($file);
	}	
	if (file_list($dir) == array()) {
		return true;
	} else {
		return false;
	}
}

function del_file($dir, $file) {	if (($file <> 'index.html') and ($file <> 'readme.txt')) {
		if ($dir[strlen($dir)-1] != '/') {			$dir[strlen($dir)] = '/';		}
		@unlink($dir.$file);	}
}

function save_user_ip() {
	global $sql;
	if (!var_set($_SESSION['ip'])) {
		$sql->log_ip(get_user_ip(), current_time());
		$_SESSION['ip'] = true;
	}
}

function sql_dump($tables = '*', $method = 'all') {
	global $sql;
	//get table list
	if($tables == '*') {
		$query = $sql->setquery('SHOW TABLES');
		$tables = array();
		while($row = mysql_fetch_row($query)) {
			$tables[] = $row[0];
		}
	} else {
		$tables = is_array($tables) ? $tables : explode(',',$tables);
	}
	$result = null;
	$date = current_time();
	foreach($tables as $table) {
		$query = $sql->setquery('SELECT * FROM '.$table);
		$num_fields = mysql_num_fields($query);
		$result .= "/* PHP PV - Backup MySQL Database for table [$table]\n Current time: $date\n\n */";
		if (($method == 'all') or ($method == 'structure')) {
			$row2 = mysql_fetch_row($sql->setquery('SHOW CREATE TABLE '.$table));
			$result .= "\n".$row2[1].";\n\n";
		}
		if (($method == 'all') or ($method == 'data')) {
			for ($i = 0; $i < $num_fields; $i++) {
				while($row = mysql_fetch_row($query)) {
					$result.= 'INSERT INTO '.$table.' VALUES(';
					for($j = 0 ;$j < $num_fields; $j++){
						$row[$j] = addslashes($row[$j]);
						if (isset($row[$j])) {
							$result .= '"'.$row[$j].'"';
						} else {
							$result .= '""';
						}
						if ($j < ($num_fields-1)) {
							$result .= ',';
						}
					}
					$result .= ");\n";
				}
			}
		}
	$result .= "\n\n\n";
	}	
	mysql_free_result($query);
	if (mysql_error() != null) {
		return false;
	} else {
		return $result;
	}
}

// END: NHÓM HÀM THỰC HIỆN LỆNH /////////////////////////////////////////////////////////







// BEGIN: NHÓM HÀM DEBUG ****************************************************************
function debug($var) {
	error_reporting(E_ALL);
	echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />';
	var_dump($var);
	die();
}
function debug_($var) {
	error_reporting(E_ALL);
	echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />';
	var_dump($var);
}

function a() {
	echo '---------- STILL PROCESS HERE ! ----------';
}

// END: NHÓM HÀM DEBUG /////////////////////////////////////////////////////////////////

?>