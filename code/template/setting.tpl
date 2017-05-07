<!-- BEGIN: main --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Cài đặt hoạt động cho website</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="template/css/admin.css"/>
	<!-- BEGIN: mess -->
	<script type="text/javascript">
		alert('{mess}');
	</script>
	<!-- END: mess -->
</head>
<body>

<form action="setting.php" method="post">
<table style="width: 680px;">
	<tr>
		<td colspan="5"><a href="setting.php#" class="link header">Cài đặt hoạt động</a></td>
	</tr>
	<tr>
		<td style="width: 30px;"><b>ID</b></td>
		<td style="width: 200px;"><b>Tên cài đặt:</b></td>
		<td style="width: 270px;"><b>Mô tả:</b></span></td>
		<td style="width: 100px;"><b>Giá trị:</b></span></td>
		<td style="width: 80px;"><b>Lần cập nhật cuối:</b></span></td>
	</tr>
	<!-- BEGIN: setting -->
	<tr>
		<td>{id}</td>
		<td class="left">{name}</span></td>
		<td class="justify">{description}</span></td>
		<td><input type="text" name="{id}" value="{value}" title="{value}"/></td>
		<td>{updated}</td>
	</tr>
	<!-- END: setting -->
	
	<!-- BEGIN: no_setting -->
	<tr>
		<td colspan="6"><i>(Hiện tại không có cài đặt nào)</i></td>
	</tr>
	<!-- END: no_setting -->
</table>

<div class="center" style="margin-bottom: 20px;">
	<input type="submit" value="Cài đặt"/>
	<input type="reset" value="Nhập lại"/>
	<input type="reset" onclick="window.location.href='login.php'" value="Về trang quản lí"/>
	<input type="reset" onclick="window.location.href='index.php'" value="Về trang chủ"/>
</div>

</form>


</body>
</html><!-- END: main -->