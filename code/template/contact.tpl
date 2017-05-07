<!-- BEGIN: main --><!DOCTYPE html>
<html lang="vi">
<head>
	<title>Contact Me</title>
	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="template/css/contact.css"/>
	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon"/>
	<script src="js/contact.js"></script>
	<script language="javascript">
	{script}
	</script>
</head>
<body>
<div id="wrapper">
	<div class="header">
		Liên hệ với người quản lí
		<a href="javascript:void(0);" onclick="window.close()">
			<span style="float: right;"><img src="template/image/close.png" title="Đóng cửa sổ" alt="Close"/>&nbsp;</span>
		</a>
		<a href="javascript:void(0);" onclick="window.location.reload()">
			<span style="float: right;"><img src="template/image/reload.png" title="Tải lại trang" alt="Reload"/></span>
		</a>
	</div>
	<br />
	<form name="contact_form" action="contact.php" method="post" onsubmit="return validate_form();">
	<table class="table">
		<tr>
			<td style="width: 120px"><label for="name">Tên của bạn: <span class="require">(*)</span></label></td>
			<td style="width: 280px"><input type="text" id="name" name="name" value="{name}"/></td>
		</tr>
		<tr>
			<td><label for="address">Địa chỉ:</label></td>
			<td><input type="text" name="address" id="address" value="{address}"/></td>
		</tr>
		<tr>
			<td><label for="subject">Tiêu đề thư:</label></td>
			<td><input type="text" name="subject" id="subject" value="{subject}"/></td>
		</tr>
		<tr>
			<td><label for="textarea">Nội dung thư: <span class="require">(*)</span></label></td>
			<td><textarea name="content" id="textarea" placeholder="Vui lòng viết tiếng Việt có dấu, không sử dụng ngôn ngữ teen hoặc dùng từ viết tắt quá nhiều.">{content}</textarea></td>
		</tr>
		<tr>
			<td><label for="confirm">Mã xác nhận: <span class="require">(*)</span></label></td>
			<td>
				<a href="#" onclick="return reloadImg('captcha');"><img id="captcha" src="captcha.php" style="vertical-align: middle;" alt="Mã xác nhận" title="Click vào đây để đổi captcha"/></a>
				<input type="text" name="captcha" id="confirm" style="width: 100px"/>
			</td>
		</tr>
	</table>
	<div style="text-align: center;">
		<input type="submit" value="Gửi tin nhắn" class="button"/>
		<input type="reset" value="Nhập lại" class="button"/>
	</div>
	<input type="hidden" name="submit" value="submit" />
	</form>
	<b>Chú ý</b>: những mục có dấu <span class="require">(*)</span> là những mục bạn bắt buộc phải điền
</div>
</body>
</html><!-- END: main -->