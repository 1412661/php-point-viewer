<?php
session_start();
include_once('config/config.php');
include_once('function/function.php');
include_once('function/func_class_rank.php');
include_once('class/mysql.php');
include_once('class/xtemplate/xtemplate.class.php');
if (!RUNTIME_DEV_MODE) {
	error_reporting(E_ERROR | E_WARNING | E_PARSE);
}
$sql = new MySQL();
save_user_ip();
		for ($i = 0; $i <= (count($list_class)-1); $i++) {
		}
		$rank = 1;
		foreach ($rank_class as $class => $info) {
			$tpl->set_autoreset();
			$tpl->assign('count_hs', $count_hs[$class]);
			$tpl->assign('rank', $rank);		$rank++;
			$tpl->assign('db_id', $db_id);
			$tpl->assign('total_add_point', $info['total_add_point']);
			$tpl->assign('total_subtr_point', $info['total_subtr_point']);
			$tpl->assign('total_point', $info['total_point']);		
			$tpl->parse('main.class_rank.class_rank_overview.class');
		}
		$tpl->assign('marquee_text', NOTICE_MARQUEE);
		
	case 'more_detail':
		$total_add_point = 0;