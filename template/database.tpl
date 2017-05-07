<!-- BEGIN: main -->{FILE "template/header.tpl"}
<body>
{FILE "template/banner.tpl"}
<div class="wrapper">

<span id="top"></span>
<table class="table">
	<tr>
		<td colspan="2"><div class="db_info">Xem chi tiết cơ sở dữ liệu</div></td>
	</tr>
	<tr>
		<td style="width: 150px;"><b>ID:</b></td>
		<td style="width: 350px;"><b>{db_id}</b></td>
	</tr>
	<tr>
		<td><b>Tên CSDL:</b></td>
		<td>{db_name}</td>
	</tr>
	<tr>
		<td><b>Năm học:</b></td>
		<td>{db_year}</td>
	</tr>
		<td>{db_subject}</td>
	</tr>
	<tr>
		<td><b>Số học sinh:</b></td>
		<td>{db_row_count} học sinh</td>
	</tr>
	<tr>
		<td><b>Ghi chú:</b></td>
		<td>[{db_comment}]</td>
	</tr>
	<tr>	
		<td><b>Thời gian cập nhật:</b></td>
		<td>{db_time} <i>(yyyy/mm/dd hh/mm/ss)</i></td>
	</tr>
</table>
<div class="hr"></div>
<table class="table table_hs">
	<tr>
		<td><b>STT</b></td>
		<!-- BEGIN: table_header -->
		<td><b>{table_header}</b></td>
		<!-- END: table_header -->
	</tr>
	<!-- BEGIN: table_row -->
	<tr class="table_hs">
		<td><b>{stt}</b></td>
		<!-- BEGIN: table_col -->
		<td>{content}</td>
		<!-- END: table_col -->
	</tr>
	<!-- END: table_row -->
</table>
<div class="button_group">
	<a href="index.php" class="button">Về trang chủ</a>
	<a href="#top" class="button">Về đầu trang</a>
</div>
<!-- END: view_db -->
<!-- BEGIN: view_list -->
<h3>Tra cứu cơ sở dữ liệu</h3>
<table class="table">
	<tr>
		<td style="width: 25px;"><b>STT</b></td>
		<td style="width: 25px;"><b>ID</b></td>
		<td style="width: 270px;" class="left"><b>Tên cơ sở dữ liệu:</b></td>
		<td style="width: 80px;"><b>Năm học:</b></td>
		<td style="width: 240px;" class="left"><b>Môn học:</b></td>
		<td style="width: 70px;"><b>Chú thích:</b></td>
		<td style="width: 150px;"><b>Thời gian cập nhật:</b></td>
	</tr>
	<!-- BEGIN: db_not_found -->
		<td colspan="7"><div class="db_not_found">(Cơ sở dữ liệu chưa được cập nhật)</div></td>
	</tr>
	<!-- END: db_not_found -->
	<!-- BEGIN: db_row -->
	<tr>
		<td>{stt}</td>
		<td><b>{db_id}</b></td>
		<td class="left"><a href="{view_db_list}" target="_blank">{db_name}</a></td>
		<td>{db_year}</td>
		<td class="left">{db_subject}</td>
		<td>{db_comment}</td>
		<td>{db_last_update}</td>
	</tr>
	<!-- END: db_row -->
</table>
<div class="description">(Bấm vào tên cơ sở dữ liệu để xem chi tiết)</div>
<div class="button_group">
	<a href="index.php" class="button">Về trang chủ</a>
</div>



<!-- BEGIN: manage_db -->
<div id="manage_db">
	<ul>
		<li><a href="#update_db">Cập nhật cơ sở dữ liệu</a></li>
		<li><a href="#backup_db">Sao lưu cơ sở dữ liệu</a></li>
		<li><a href="#sql_query">Truy vấn đến cơ sở dữ liệu</a></li>
	</ul>
	<div id="update_db">
		<h1><a href="database.php?action=manage_db#update_db">Cập nhật cơ sở dữ liệu</a></h1>
		<div style="float: left; width: 580px;">
			<form action="database.php?action=manage_db&amp;task=update_db#update_db" method="post" enctype="multipart/form-data">
				<table class="table" style="width: 580px;">
					<tr>
						<td><label class="header">Chọn file chứa cơ sở dữ liệu:</label></td>
					</tr>
					<tr>
						<td><label for="db_name" class="header">Tên cơ sở dữ liệu:</label></td>
						<td colspan="2"><input type="text" id="db_name" name="db_name" value="{db_name}" style="width: 290px;"/></td>
					</tr>
					<tr>
						<td><label for="db_year" class="header">Năm học:</label></td>
						<td colspan="2"><input type="text" id="db_year" name="db_year" value="{db_year}" style="width: 290px"/></td>
					</tr>
					<tr>
						<td><label for="db_commnet" class="header">Chú thích:</label></td>
						<td colspan="2"><input type="text" id="db_commnet" name="db_comment" value="{db_comment}" style="width: 290px"/></td>
					</tr>
					<tr>
						<td rowspan="5"><label class="header">Môn học:</label></td>
						<td width="110px"><input type="checkbox" id="r1" name="subject[]" value="Vật lí" {vatli}/><label for="r1">(1) Vật lí</label></td>
						<td width="110px"><input type="checkbox" id="r2" name="subject[]" value="Hóa học" {hoahoc} /><label for="r2">(2) Hóa học</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="r3" name="subject[]" value="Sinh học" {sinhhoc} /><label for="r3">(3) Sinh học</label></td>
						<td><input type="checkbox" id="r4" name="subject[]" value="Anh văn" {anhvan} /><label for="r4">(4) Anh văn</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="r5" name="subject[]" value="Toán" {toan} /><label for="r5">(5) Toán</label></td>
						<td><input type="checkbox" id="r6" name="subject[]" value="Ngữ văn" {nguvan} /><label for="r6">(6) Ngữ văn</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="r7" name="subject[]" value="Tin học" {tinhoc}/><label for="r7">(7) Tin học</label></td>
						<td><input type="checkbox" id="r8" name="subject[]" value="Tiếng Pháp" {tiengphap} /><label for="r8">(8) Tiếng pháp</label></td>
					</tr>
					<tr>
						<td><input type="checkbox" id="r9" name="subject[]" value="Lịch sử" {lichsu}/><label for="r9">(9) Lịch sử</label></td>
						<td><input type="checkbox" id="r10" name="subject[]" value="Địa lí" {diali}/><label for="r10">(10) Địa lí</label></td>
					</tr>
					<tr>
						<td><label for="db_row_count" class="header">Số học sinh:</label></td>
						<td colspan="2"><input type="text" id="db_row_count" name="db_row_count" value="{db_row_count}" style="width: 290px;"/></td>
					</tr>
					<tr>
						<td><label class="header">Kích thước file tối đa:</label></td>
						<td colspan="2"><b>{update_db_max_file_size}</b></td>
					</tr>
					<tr>
						<td><label class="header">Định dạng file cho phép upload:</label></td>
						<td colspan="2"><b>{update_db_allow_ext}</b></td>
					</tr>
				</table>
				<div style="text-align: center;">
			</form>
		</div>
		<div style="float: right; width: 300px;">
			<!-- BEGIN: update_db_error -->
			<div class="db_error">
			<!-- END: update_db_error -->
			<!-- BEGIN: update_db_success -->
				<div class="success_mess">
				<a href="database.php?action=view_db&amp;db_id={db_uploaded_id}" target="_blank" class="button">Xem lại thông tin cơ sở dữ liệu</a>
			<!-- END: update_db_success -->
			<div class="chu_y">
				<div class="warning_mess">
					<img src="template/image/warning_mess.png" alt="warning_mess"/>&nbsp;Chú ý !
				</div>
					<li>Cột 1,2,3 của file dữ liệu lần lượt là là số báo danh, họ tên và lớp của học sinh. Các cột tiếp theo là điểm và mã đề của môn học.</li>
					<li>Mỗi môn học ghi làm 2 cột: cột đầu là điểm số, cột sau là mã đề (nếu có), nếu không có mã đề thì để trống cột này.</li>
					<li>Thứ tự các cột điểm ghi trong cơ sở dữ liệu phải theo thứ tự của các môn học ở mục <b>Nhập môn học</b> như trên.</li>
					<li>Bỏ trống các ô/cột nếu không có dữ liệu cho ô/cột đó.</li>
					<li>Nếu nhập dữ liệu bằng file ".csv" thì mỗi phần dữ liệu phải cách nhau bằng 1 dấu chấm phẩy ";". Nếu điểm lẻ thì sử dụng dấy chấm "." để ngăn cách phần nguyên và phần thập phân của điểm.</li>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="backup_db">
		<h1><a href="database.php?action=manage_db#backup_db" class="link">Sao lưu cơ sở dữ liệu</a></h1>
		<div style="width: 430px; float: left;">
			<form action="database.php?action=manage_db&amp;task=backup_db#backup_db" method="post">
				<table class="table" style="width: 420px;">
					<tr>
						<td colspan="2"><div class="table_header">Tùy chọn sao lưu</div></td>
					</tr>
					<tr>
						<td><label class="header">Chọn định dạng lưu trữ:</label></td>
						<td>
							<input type="radio" id="r11" name="filetype" value=".gz" {gz} /><label for="r11">Nén GZIP (.sql.gz)</label>
							<input type="radio" id="r12" name="filetype" value=".sql" {sql} /><label for="r12">Văn bản trơn (.sql)</label>
						</td>
					</tr>
					<tr>
						<td><label class="header">Chọn nơi lưu trữ:</label></td>
						<td>
							<input type="checkbox" id="r13" name="storage[]" value="online" {online} /><label for="r13">Tại máy chủ</label>
							<input type="checkbox" id="r14" name="storage[]" value="offline" {offline} /><label for="r14">Tải về máy</label>
						</td>
					</tr>
					<tr>
						<td><label class="header">Dữ liệu được sao lưu:</label></td>
						<td>
							<input type="checkbox" id="r15" name="content[]" value="structure" {structure}/><label for="r15">Lưu cấu trúc</label>
							<input type="checkbox" id="r16" name="content[]" value="data" {data} /><label for="r16">Lưu dữ liệu</label>
						</td>
					</tr>
				</table>
					<input type="submit" value="Sao lưu ngay !" class="button" style="margin: 10px;"/>
				</div>
			</form>
		</div>
		<div style="float: right; width: 450px;">
					<!-- BEGIN: sql_table_list -->
					<li>{table_name}</li>
					<!-- END: sql_table_list -->
				</ul>
				<div class="hr"></div>
				<b>Cơ sở dữ liệu hiện tại:</b>&nbsp;[{current_db}]
			</td>
			<td style="vertical-align: top;">
				
					<div class="error_mess">
				<!-- END: query_error -->

				<!-- BEGIN: query_success -->
				
				
				<a href="javascript:toggle('sql_result');" target="_blank" class="button">Ẩn/Hiện kết quả trả về</a>

				<div id="sql_result" style="max-height: 400px; overflow: auto;">
						<table style="width: 100%;" class="table">
							<tr>
								<!-- BEGIN: sql_result_header --><td><b>{header}</b></td><!-- END: sql_result_header -->
							</tr>
							<!-- BEGIN: sql_result_row -->
							<tr>
								<!-- BEGIN: sql_result_col --><td>{content}</td><!-- END: sql_result_col -->
							</tr>
							<!-- END: sql_result_row -->
						</table>
				</div>
				<!-- END: query_success -->
			</td>			
		</tr>
		<tr>
			<td colspan="2">
				<b>Nhập truy vấn:</b><input type="text" name="query" value="{query}" style="width: 95%"/>
			</td>
		</tr>
	</table>
	<div class="center">
		<input type="submit" value="Gửi truy vấn" class="button" style="margin: 10px;"/>
	</div>
	<input type="hidden" name="submit" value="setquery" />
	</form>
	</div>
</div>
<!-- END: manage_db -->
</div>
{FILE "template/footer.tpl"}
</body>
</html><!-- END: main -->