<!-- BEGIN: main --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Trang điều hướng Quản lí website</title>
	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="template/css/login.css"/>
	<!-- BEGIN: alert -->
	<script type="text/javascript">
		alert('{alert}');
	</script>
	<!-- END: alert -->
</head>
<body>
	<div style="text-align: center; margin-bottom: -10px;"><img style="width: 120px; height: 150px;" src="template/image/logo.jpg" alt="NH Logo"/></div>
<!-- BEGIN: login -->
<div id="login">
	<form action="login.php" method="post">
	<table>
		<tr>
			<td colspan="2">
				<div class="header">Đăng nhập hệ thống</div>
			</td>
		</tr>
		<tr>
			<td><label for="username">Tên đăng nhập:</label></td>
			<td><input type="text" id="username" name="username"/></td>
		</tr>
		<tr>			<td><label for="password">Mật khẩu:</label></td>
			<td><input type="password" id="password" name="pass"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<div style="text-align: center;">
					<input type="submit" value="Đăng nhập"/> <input type="reset" value="Nhập lại"/>
				</div>
			</td>
		</tr>
	</table>
	</form>
</div>
<!-- END: login -->
<!-- BEGIN: select_function -->
<div id="select_function">
	<table>
		<tr>
			<td rowspan="8">
				<a href="login.php#"><span class="header">Chức năng quản lí</span></a>
			</td>
			<td><a href="database.php?action=manage_db#update_db"><span class="green">(1) Cập nhật cơ sở dữ liệu</span></a></td>
		</tr>
		<tr>
			<td><a href="database.php?action=manage_db#backup_db"><span class="green">(2) Sao lưu cơ sở dữ liệu</span></a></td>
		</tr>
		<tr>
			<td><a href="database.php?action=manage_db#sql_query"><span class="green">(3) Truy vấn đến cơ sở dữ liệu</span></a></td>
		</tr>
		<tr>
			<td><a href="log.php"><span class="green">(4) Lịch sử hệ thống</span></a></td>
		</tr>
		<tr>
			<td><a href="users.php"><span class="green">(5) Quản lí tài khoản</span></a></td>
		</tr>
		<tr>
			<td><a href="setting.php"><span class="green">(6) Cài đặt hoạt động</span></a></td>
		</tr>		<tr>			<td><a href="index.php"><span class="red">(7) Về trang chủ</span></a></td>		</tr>		<tr>			<td><a href="login.php?logout"><span class="red">(8) Đăng xuất</span></a></td>		</tr>
	</table>
</div>
<!-- END: select_function -->
</body>
</html>
<!-- END: main -->