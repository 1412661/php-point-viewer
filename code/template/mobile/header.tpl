<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
	<title>Xem và phân tích điểm - PHP Point Viewer {dynamic_title}</title>	<link rel="shortcut icon" href="template/image/favicon.ico" type="image/x-icon" />	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="Description" content="Xem và phân tích điểm - PHP Point Viewer {dynamic_title}" />
	<meta name="author" content="quocbao747" />
	<script type="text/javascript" src="js/js-custom.mobile.js"></script>
	<link rel="stylesheet" type="text/css" href="template/css/style.mobile.css"/>
	<!-- BEGIN: spec_function -->
	<script type="text/javascript">
		checked = false;
		function checkedAll_(frm) {
			var frm = document.getElementById(frm);
			if (checked == false) {
				checked = true
			} else {
				checked = false
			}
			
			for (var i = 3; i < 3 + {backup_db_list_count}; i++) {
				frm.elements[i].checked = checked;
			}
		}
	</script>
	<!-- END: spec_function -->
	
	<!-- BEGIN: dialog -->
	<script type="text/javascript">
		alert('Trang web được xây dựng và hiển thị tốt nhất trên trình duyệt Google Chrome. Nếu dùng trình duyệt Internet Explorer hoặc một số trình duyệt khác có thể bạn sẽ gặp một số lỗi hiển thị.\n\nTrình duyệt của bạn cần hỗ trợ JavaScript để chạy các thành phần của trang web.\n\n\nquocbao747 - Thanks and best regards');
	</script>
	<!-- END: dialog -->
	
	<!-- BEGIN: input_error -->
	<script language="javascript">
		alert('{error_mess}');
	</script>
	<!-- END: input_error -->
	
	<!-- BEGIN: add_js -->
	<script language="javascript">
		function add_js() {
			{js}
		};
	</script>
	<!-- END: add_js -->
</head>