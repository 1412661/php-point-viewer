﻿<?php/*	Đây là file tạo biểu đồ tổng hợp điểm khi bạn xem bảng điểm xếp hạng tập thể lớp*/
session_start();
include_once('config/config.php');
include_once('class/xtemplate/xtemplate.class.php');
include_once('function/function.php');if (!RUNTIME_DEV_MODE) {	error_reporting(E_ERROR | E_WARNING | E_PARSE);}if (!var_set($_SESSION['chart'])) {	die();}$tpl = new XTemplate('template/chart.tpl');switch ($_GET['type']) {	case 'class_rank':		
		foreach ($_SESSION['chart'] as $class => $point) {
			$chart['total_point'][$class] = $point['total_point'];
			$chart['total_add_point'][$class] = $point['total_add_point'];
			$chart['total_subtr_point'][$class] = $point['total_subtr_point'];
		}						$percentage = false;		foreach (array_keys($chart) as $type) {			$max = max($chart[$type]);			$i = 0;			$total = count($chart[$type]);						foreach($chart[$type] as $class => $point) {				$tpl->set_autoreset();								$spacing = round($total / ($total ^ 2), 2);				$left = round($spacing + ((100 / $total) * $i++), 2);				$height = round($percentage ? $point : (($point / $max) * 100), 2);				$width = round((100 / $total) - ($spacing * 2), 2);								$tpl->assign('left', $left);				$tpl->assign('height', $height);				$tpl->assign('width', $width);				$tpl->assign('point', $point);				$tpl->assign('class', $class);				$tpl->assign('db_id', $_SESSION['db_id']);								if ($point < 0 ) {					$tpl->assign('color', 'black');				} else {					$tpl->assign('color', 'white');				}								$tpl->parse('main.class_rank.'.$type);			}		}				$tpl->parse('main.class_rank');				unset($_SESSION['chart']);		unset($_SESSION['db_id']);				break;			case 'student':		$chart = $_SESSION['chart'];				$max = 10;		$i = 0;		$total = count($chart);		$percentage = false;				foreach($chart as $info => $point) {			$tpl->set_autoreset();			$spacing = round($total / ($total ^ 2), 2);			$left = round($spacing + ((100 / $total) * $i), 2);			$height = round($percentage ? $point : (($point / $max) * 100), 2);			$width = round((100 / $total) - ($spacing * 2), 2);			$tpl->assign('left', $left);			$tpl->assign('height', $height);			$tpl->assign('width', $width);			$tpl->assign('info', $info);			$tpl->assign('point', $point);			$tpl->assign('stt', ++$i);						$tpl->parse('main.student.cols');		}				$tpl->parse('main.student');		unset($_SESSION['chart']);		break;	default: die('chart.php : [type] not defined');}
$tpl->parse('main');
$tpl->out('main');
?>