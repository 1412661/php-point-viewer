<?php
session_start();
	case 'view_list':
	case 'manage_db':
						unlink('backup_db/'.$filename);
				}
				$tpl->assign('mess', 'Đã sao lưu thành công cơ sở dữ liệu');
				$tpl->parse('main.manage_db.backup_db_success');
			}
		}
		########	SQL set query		########################
		########################################################