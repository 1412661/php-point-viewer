<!-- BEGIN: main --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Lịch sử sử dụng website</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="template/css/admin.css"/>
	<script type="text/javascript">
		{mess1}{mess2}{mess3}
	</script>
</head>
<body>
<form action="log.php" method="get">
	<table>
		<tr>
			<td colspan="3">
				<a href="log.php#" class="link header">Lịch sử hệ thống</a>
			</td>
		</tr>
		<tr>
			<td width="200px"></td>
			<td width="50px">Xem</td>
			<td width="50x">Xóa</td>
		</tr>
		<tr>
			<td class="left"><b>Thống kê truy cập:</b></td>
			<td><input type="checkbox" name="action[]" {checked_access} value="access"/></td>
			<td><input type="checkbox" name="action[]" {checked_c_access} value="c_access"/></td>
		</tr>
		<tr>
			<td class="left"><b>Thống kê IP:</b> <i>{count_ip}</i></td>
			<td><input type="checkbox" name="action[]" {checked_ip} value="ip"/></td>
			<td><input type="checkbox" name="action[]" {checked_c_ip} value="c_ip"/></td>
		</tr>
		<tr>
			<td class="left"><b>Xem lịch sử:</b> <i>{count_log}</i></td>
			<td><input type="checkbox" name="action[]" {checked_log} value="log"/></td>
			<td><input type="checkbox" name="action[]" {checked_c_log} value="c_log"/></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="Thực hiện"/>
				<input type="reset" value="Nhập lại"/>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<a href="index.php" class="link">Về trang chủ</a> | <a href="login.php" class="link">Về trang quản lí</a> | <a href="{refresh}" class="link">Làm mới</a>
			</td>
		</tr>
	</table>
</form>
<!-- BEGIN: site_access -->
<table style="width: 320px;">
	<tr>
		<td colspan="2"><b>Thống kê lượt truy cập:</b></td>
	</tr>
	<tr>
		<td class="left">Truy cập:</td>
		<td class="left">{count_access} lượt</td>
	</tr>
	<tr>
		<td class="left">Xử lí dữ liệu:</td>
		<td class="left">{count_view} lượt</td>
	</tr>
	<tr>
		<td class="left">Nhập dữ liệu lỗi:</td>
		<td class="left">{count_error} lượt</td>
	</tr>
</table>
<!-- END: site_access -->




<!-- BEGIN: log_ip -->
<div style="max-height: 500px; overflow-y: scroll;">
<table style="width: 320px;">
	<tr>
		<td colspan="3" class="left">
			<b>Thống kê IP truy cập:</b><br/><br/>
			Số IP đã truy cập: <b>{count_ip}</b> IP<br/>
			IP hiện tại của bạn: <b>{admin_ip}</b>
		</td>
	</tr>
	<tr>
		<td colspan="3">Danh sách IP đã truy cập:</td>
	</tr>
	<tr>
		<td>STT</td>
		<td>IP</td>
		<td>Thời gian truy cập:</td>
	</tr>
	
	<!-- BEGIN: no_ip_detail -->
	<tr>
		<td colspan="3">(Hệ thống chưa ghi nhận IP nào truy cập vào)</td>
	</tr>
	<!-- END: no_ip_detail -->
	
	<!-- BEGIN: ip_detail -->
	<tr>
		<td>{stt}</td>
		<td class="left">{ip}</td>
		<td>{time}</td>
	</tr>
	<!-- END: ip_detail -->
</table>
</div>
<!-- END: log_ip -->

<!-- BEGIN: log -->
<div style="max-height: 1000px; overflow-y: scroll;">
	<table style="width: 600px;">
		<tr>
			<td colspan="5">
				<b>Lịch sử sử dụng website: [{count_log}]</b>
			</td>
		</tr>
		<tr>
			<td style="width: 25px;"><b>ID</b></td>
			<td style="width: 95px;"><b>Loại log:</b></td>
			<td style="width: 335px;"><b>Thống tin log:</b></td>
			<td style="width: 65px;"><b>IP</b></td>
			<td style="width: 80px;"><b>Thời gian:</b></td>
		</tr>
		
		<!-- BEGIN: log_not_exist -->
		<tr>
			<td colspan="5">
				(Hệ thống chưa ghi nhận Log nào)
			</td>
		</tr>
		<!-- END: log_not_exist -->
		<!-- BEGIN: log_site -->
		<tr>
			<td>{id}</td>
			<td class="left">{act}</td>
			<td class="justify">{act_info}</td>
			<td>{ip}</td>
			<td>{time}</td>
		</tr>
		<!-- END: log_site -->
	</table>
</div>
<!-- END: log -->
</body>
</html><!-- END: main -->