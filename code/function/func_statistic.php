<?php

function list_class($db_id) {
	global $sql;
	$search = $sql->setquery("SELECT DISTINCT class FROM database_$db_id ORDER BY class");
	while ($data = mysql_fetch_assoc($search)) {
		$list_class[] = $data['class'];
	}	
	return $list_class;
}

function global_point($class) {
	global $sql, $db_id, $subject_arr, $sid_arr;
	$count_10p = 0;
	$count_8to10p = 0;
	$count_65to8p = 0;
	$count_5to65p = 0;
	$count_5p = 0;
	$count_subject = count($subject_arr);
	//5p
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$search = mysql_num_rows($sql->setquery("SELECT $sid,class FROM database_$db_id WHERE $sid<5 AND class='$class'"));
		$count_5p = $count_5p + $search;
	}
	//5to65p
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];		
		$search = mysql_num_rows($sql->setquery("SELECT $sid,class FROM database_$db_id WHERE $sid>=5 AND $sid<6.5 AND class='$class'"));
		$count_5to65p = $count_5to65p + $search;
	}	
	//65to8p
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$search = mysql_num_rows($sql->setquery("SELECT $sid,class FROM database_$db_id WHERE $sid>=6.5 AND $sid<8 AND class='$class'"));
		$count_65to8p = $count_65to8p + $search;
	}
	//8to10p
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$search = mysql_num_rows($sql->setquery("SELECT $sid,class FROM database_$db_id WHERE $sid>=8 AND $sid<10 AND class='$class'"));
		$count_8to10p = $count_8to10p + $search;
	}
	//10p
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];		$search = mysql_num_rows($sql->setquery("SELECT $sid,class FROM database_$db_id WHERE $sid=10 AND class='$class'"));
		$count_10p = $count_10p + $search;
	}	
	########	Tính phương sai, độ lệch chuẩn và điểm trung bình	########
	########################################################################
	$avg = 0;
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$avg_point = mysql_fetch_row($sql->setquery("SELECT AVG($sid) AS avg FROM database_$db_id WHERE class='$class'"));
		$avg = $avg + $avg_point[0];
	}	
	$avg = $avg/$count_subject;
	$dlc = 0;
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$dlc_ = mysql_fetch_row($sql->setquery("SELECT STD($sid) FROM database_$db_id WHERE class='$class'"));
		$dlc = $dlc + $dlc_[0];
	}
	$dlc = $dlc/$count_subject;
	$phsai = 0;
	for ($i = 0; $i <= ($count_subject-1); $i++) {
		$sid = 'sid'.$sid_arr[$subject_arr[$i]];
		$phsai_ = mysql_fetch_row($sql->setquery("SELECT VARIANCE($sid) FROM database_$db_id WHERE class='$class'"));
		$phsai = $phsai + $phsai_[0];
	}	
	$phsai = $phsai/$count_subject;
	////////////////////////////////////////////////////////////////////////////
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class'"));
	$count_hs = intval($search[0]);
	return array(
		'count_point'	=>	array(
					'count_10p'	 	=>	$count_10p,
					'count_8to10p'	=>	$count_8to10p,
					'count_65to8'	=>	$count_65to8p,
					'count_5to65p' 	=>	$count_5to65p,
					'count_5p' 		=>	$count_5p,
					'dtb'			=>	round($avg, 3),
					'phsai'			=>	round($phsai, 4),
					'dlc'			=> 	round($dlc, 4)
							),							
		'percent'		=> array(
					'per_10p'		=>	percent($count_10p, $count_subject*$count_hs, 3),
					'per_8to10p'	=>	percent($count_8to10p, $count_subject*$count_hs, 3),
					'per_65to8p'	=>	percent($count_65to8p, $count_subject*$count_hs, 3),
					'per_5to65p'	=>	percent($count_5to65p, $count_subject*$count_hs, 3),
					'per_5p'		=>	percent($count_5p, $count_subject*$count_hs, 3)
						),
		'count_hs'		=>	$count_hs
		);
}

function subject_point($class, $sid) {
	global $sql, $db_id, $subject_arr, $sid_arr;
	$count_10p = 0;
	$count_8to10p = 0;
	$count_65to8p = 0;
	$count_5to65p = 0;
	$count_5p = 0;
	$count_subject = count($subject_arr);	
	//count_5p
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class' AND sid$sid<5"));
	$count_5p = $search[0];
	//count_5to65p
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class' AND sid$sid>=5 AND sid$sid<6.5"));
	$count_5to65p = $search[0];
	//count_65to8p
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class' AND sid$sid>=6.5 AND sid$sid<8"));
	$count_65to8p = $search[0];
	//count_8to10p
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class' AND sid$sid>=8 AND sid$sid<10"));
	$count_8to10p = $search[0];
	//count_10p
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class' AND sid$sid=10"));
	$count_10p = $search[0];	
	########	Tính phương sai, độ lệch chuẩn và điểm trung bình	########
	########################################################################
	$search = mysql_fetch_row($sql->setquery("SELECT AVG(sid$sid) FROM database_$db_id WHERE class='$class'"));
	$avg = $search[0];
	$search = mysql_fetch_row($sql->setquery("SELECT STD(sid$sid) FROM database_$db_id WHERE class='$class'"));
	$dlc = $search[0];
	$search = mysql_fetch_row($sql->setquery("SELECT VARIANCE(sid$sid) FROM database_$db_id WHERE class='$class'"));
	$phsai = $search[0];
	////////////////////////////////////////////////////////////////////////////		
	$search = mysql_fetch_row($sql->setquery("SELECT COUNT(*) FROM database_$db_id WHERE class='$class'"));
	$count_hs = intval($search[0]);

	return array(
		'count_point'	=>	array(
					'count_10p'	 	=>	$count_10p,
					'count_8to10p'	=>	$count_8to10p,
					'count_65to8'	=>	$count_65to8p,
					'count_5to65p' 	=>	$count_5to65p,
					'count_5p' 		=>	$count_5p,
					'dtb'			=>	round($avg, 3),
					'phsai'			=>	round($phsai, 4),
					'dlc'			=> 	round($dlc, 4)
				),				
		'percent'		=>	array(
					'per_10p'		=>	percent($count_10p, $count_hs, 3),
					'per_8to10p'	=>	percent($count_8to10p, $count_hs, 3),
					'per_65to8p'	=>	percent($count_65to8p, $count_hs, 3),
					'per_5to65p'	=>	percent($count_5to65p, $count_hs, 3),
					'per_5p'		=>	percent($count_5p, $count_hs, 3)
				),
		'count_hs'		=>	$count_hs
		);
}

function top_hs($bxh_number) {
	global $sql, $db_id, $subject_arr, $sid_arr;
	for ($i = 0; $i <= (count($subject_arr)-1); $i++) {
		$sid[] = 'sid'.$sid_arr[$subject_arr[$i]];
	}	
	$sid = implode(',', $sid);
	$search = $sql->setquery("SELECT sbd,hsname,$sid FROM database_$db_id");
	while ($result = mysql_fetch_row($search)) {
		$data[] = $result;
	}
	for ($i = 0; $i <= count($data)-1; $i++) {
		$point = 0;
		for($k = 2; $k <= (count($subject_arr)+2); $k++) {
			$point = $point + $data[$i][$k-1];
		}
		$point = round($point/count($subject_arr), 3);
		if (RUNTIME_GET_HS_DTB_0) {
			$hs_dtb[$data[$i][0]] = $point;
		} else {
			if ($point != 0) {
				$hs_dtb[$data[$i][0]] = $point;
			}
		}
	}	
	//top hs first 
	asort($hs_dtb);
	$i = 0;
	foreach ($hs_dtb as $key => $val) {
		if ($i >= (count($hs_dtb)-$bxh_number)) {
			$hs_dtb_first[$key] = $val;
		}
		$i++;
	}	
	arsort($hs_dtb_first);	
	//top hs last 
	arsort($hs_dtb);
	$i = 0;
	foreach ($hs_dtb as $key => $val) {
		if ($i >= (count($hs_dtb)-$bxh_number)) {
			$hs_dtb_last[$key] = $val;
		}
		$i++;
	}	
	asort($hs_dtb_last);
	return array('first'=>$hs_dtb_first, 'last'=>$hs_dtb_last);
}

function hs_list() {
	global $sql, $db_id;
	$search = $sql->setquery("SELECT sbd,hsname,class FROM database_$db_id");
	while ($data = mysql_fetch_assoc($search)) {
		$hs_list[$data['sbd']] = array('name'=>standard_name($data['hsname']), 'class'=>$data['class']);
	}
	return $hs_list;
}

?>