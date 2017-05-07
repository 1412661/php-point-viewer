<!--BEGIN: main -->{FILE "template/header.tpl"}
<body>
{FILE "template/banner.tpl"}
<div id="output">
<div class="header">
	<h3>Xem điểm kiểm tra</h3>
	<i>Cơ sở dữ liệu hiện tại là <span class="low_point"><b>{db_name}</b></span></i>
</div>

<!-- BEGIN: output_hs -->
<div style="width: 630px;" id="output_hs">
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
	<div class="link">		<a href="xemdiem.php?db_id={db_id}&amp;class={class}&amp;search_method=class" target="_blank">(Xem bảng điểm của lớp {class})</a>	</div>	<div style="text-align: center;">
		<button onclick="window.location.reload()">Tải lại trang</button>
		<button onclick="window.location.href = 'index.php'">Về trang chủ</button>
		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
	</div>
</div>
<!-- END: output_hs -->
<!-- BEGIN: output_class -->
<div style="margin: auto; width: 920px;" id="output_class">
	<div class="header"><h3>Bảng điểm của lớp {class} - Tổng cộng có {count_hs} học sinh</h3></div>
	<table class="table tablesorter">
		<thead>
		<tr>
			<th title="Số thứ tự" style="width: 30px;">STT</th>
			<th title="Tên học sinh" style="width: 180px;">Tên học sinh</th>
			<th title="Số báo danh" style="width: 60px;">SBD</th>			
			<!-- BEGIN: table_header -->
			<th title="Môn học" style="width: 65px;">{subject}</th>
			<th title="Mã đề" style="width: 50px;">Mã đề</th>
			<!-- END: table_header -->
			<th title="Điểm trung bình môn. Tất cả các môn đều được tính hệ số 1" style="width: 65px;">Điểm TB</th>
		</tr>
		</thead>
		
		<tbody>
		<!-- BEGIN: table_body -->
		<tr>
			<td class="center"><b>{STT}</b></td>
			<td>{hsname}</td>
			<td class="center">{sbd}</td>
			<!-- BEGIN: table_body_point -->
			<td class="center">{subject_point}</td>
			<td class="center">{subject_exam_code}</td>
			<!-- END: table_body_point -->
			<td class="center">{dtb}</td>
		</tr>
		<!-- END: table_body -->
		</tbody>
	</table>

	<table class="table total">
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
	</table>	
	<div style="text-align: center;">
		<button onclick="window.location.reload()">Tải lại trang</button>
		<button onclick="window.location.href = 'index.php'">Về trang chủ</button>
		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
	</div>
</div>
<!-- END: output_class --></div>
{FILE "template/footer.tpl"}
</body>
</html>
<!-- END: main -->