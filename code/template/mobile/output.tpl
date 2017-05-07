<!--BEGIN: main -->{FILE "template/mobile/header.tpl"}
<body>
{FILE "template/mobile/banner.tpl"}
<div id="output">
<div class="wrapper center">
	<div class="header">Xem điểm kiểm tra</div>
	<i>Cơ sở dữ liệu hiện tại là <span class="low_point"><b>{db_name}</b></span></i>
</div>
<br />
<!-- BEGIN: output_hs -->
<div class="wrapper" id="output_hs">
	<!-- BEGIN: hstable -->
	<table class="table">
		<tr>
			<td width="100px">Tên học sinh:</td>
			<td width="230px"><b>{hsname}</b></td>
		</tr>
		<tr>
			<td>Lớp:</td>
			<td><b>{class}</b></td>
		</tr>
		<tr>
			<td>Số báo danh:</td>
			<td><b>{sbd}</b></td>
		</tr>
		<tr>
			<td>Điểm:</td>
			<td>
				<!-- BEGIN: subject -->
				Môn {subject_name}: 
				<!-- BEGIN: point -->
				<span class="low_point">{subject_point}</span> - Mã đề <b>{subject_exam_code}</b><br />
				<!-- END: point -->
				<!-- BEGIN: empty_point -->
				<span class="low_point"><i>(không có điểm)</i></span><br />
				<!-- END: empty_point -->
				<!-- END: subject -->
			</td>
		</tr>
	</table>
	<!-- END: hstable -->
	<div class="center">
		<br />
		<a href="xemdiem.php?db_id={db_id}&amp;class={class}&amp;search_method=class" target="_blank"><i>(Xem bảng điểm của lớp {class})</i></a>
		<br /><br />
		<button onclick="window.location.reload()">Tải lại trang</button>
		<button onclick="window.location.href = 'index.php'">Về trang chủ</button>
		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
	</div>
</div>
<!-- END: output_hs -->
<!-- BEGIN: output_class -->
<div style="width: 700px;" class="wrapper" id="output_class">
	<div class="header">Bảng điểm của lớp {class} - Tổng cộng có {count_hs} học sinh</div>
	<br />
	<table class="table center" style="width: 100%;">
		<tr style="font-weight: bold;">
			<td>STT</td>
			<td>Tên học sinh</td>
			<td>SBD</td>			
			<!-- BEGIN: table_header -->
			<td>{subject}</td>
			<td>Mã đề</td>
			<!-- END: table_header -->
			<td>Điểm TB</td>
		</tr>

		
		<!-- BEGIN: table_body -->
		<tr>
			<td><b>{STT}</b></td>
			<td class="left">{hsname}</td>
			<td>{sbd}</td>
			<!-- BEGIN: table_body_point -->
			<td>{subject_point}</td>
			<td>{subject_exam_code}</td>
			<!-- END: table_body_point -->
			<td>{dtb}</td>
		</tr>
		<!-- END: table_body -->
	</table>
	<br />
	<table class="table" style="width: 500px;">
		<tr>
			<td colspan="4" class="center"><h3>Tổng kết</h3></td>
		</tr>
		<tr>
			<td style="width: 250px;" colspan="2" class="bg_green high_point center">Điểm từ 8.0 trở lên</td>
			<td style="width: 250px;" colspan="2" class="bg_red low_point center">Điểm dưới 5.0</td>
		</tr>
		<tr>
			<td class="bg_green">Số điểm từ 8.0 trở lên:</td>
			<td class="bg_green center high_point">{green_point}</td>
			<td class="bg_red">Số điểm dưới 5.0:</td>
			<td class="bg_red center low_point">{red_point}</td>
		</tr>
		<tr>
			<td class="bg_green">Số điểm trung bình từ 8.0 trở lên:</td>
			<td class="bg_green center high_point">{dtb_green_point}</td>
			<td class="bg_red">Số điểm trung dưới 5.0:</td>
			<td class="bg_red center low_point">{dtb_red_point}</td>
		</tr>
		<tr>
			<td colspan="4" class="center">
				<b>Điểm trung bình cả lớp: {class_dtb} điểm</b>
			</td>
		</tr>
	</table>	<br />
	<div class="center">
		<button onclick="window.location.reload()">Tải lại trang</button>
		<button onclick="window.location.href = 'index.php'">Về trang chủ</button>
		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
	</div>
</div>
<!-- END: output_class --></div>
{FILE "template/mobile/footer.tpl"}
</body>
</html>
<!-- END: main -->