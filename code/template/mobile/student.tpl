<!-- BEGIN: main -->{FILE "template/mobile/header.tpl"}
<body>
{FILE "template/mobile/banner.tpl"}

<div id="student">

<div class="wrapper">
		<!-- BEGIN: notice -->
			<div class="chu_y">
				<div class="warning_mess">
					<img src="template/image/warning_mess.png" alt="warning_mess"/>&nbsp;Hướng dẫn sơ lược
				</div>
				
				<ul>
					<li>Chức năng này cho phép bạn xem điểm trung bình của mình qua các kì kiểm tra và điểm trung bình cả năm với biểu đồ rất trực quan.</li>
					<li>Để tra cứu kết quả của mình hoặc của học sinh khác, bạn cần phải nhập chính xác <b>Năm học</b> và <b>Tên học sinh</b>. <b>Tên học sinh</b> không nhất thiết phải là tên đầy đủ.</li>
					<li>Bạn không bắt buộc phải nhập <b>Lớp</b> và <b>Số báo danh</b> tuy nhiên việc nhập đầy đủ thông tin sẽ giúp quá trình tìm kiếm diễn ra nhanh chóng hơn.</li>
				</ul>
				
				<div class="right"><i>Cảm ơn các bạn đã sử dụng sản phẩm</i></div>
			</div>
		<!-- END: notice -->
		
		<h3 class="center"><a href="student.php#">Xem kết quả học tập của học sinh</a></h3>
		<form action="student.php" method="get">
		<table class="table" style="width: 400px; margin: auto;">
			<tr>
				<td style="width: 160px;"><b>Năm học:<span class="require">(*)</span></b></td>
				<td>
					<select name="year" style="width: 130px;">
						<option value="">Chọn năm học</option>
						{year_option}
					</select>
				</td>
			</tr>
			<tr>
				<td><b><label for="hsname">Tên học sinh:</label><span class="require">(*)</span></b></td>
				<td><input id="hsname" type="text" name="hsname" value="{hsname}" style="width: 180px;"/></td>
			</tr>
			<tr>
				<td><b>Lớp:</b></td>
				<td>
					<select name="class" style="width: 100px;">
						<option value="">Chọn lớp</option>
						<optgroup label="Khối 10">
							<option value="10TL1" {10TL1} >10TL1</option>
							<option value="10TL2" {10TL2} >10TL2</option>
							<option value="10TL3" {10TL3} >10TL3</option>
							<option value="10TL4" {10TL4} >10TL4</option>
							<option value="10TL5" {10TL5} >10TL5</option>
							<option value="10TL6" {10TL6} >10TL6</option>
							<option value="10TL7" {10TL7} >10TL7</option>
							<option value="10TL8" {10TL8} >10TL8</option>
							<option value="10TH1" {10TH1} >10TH1</option>
							<option value="10TH2" {10TH2} >10TH2</option>
							<option value="10CD1" {10CD1} >10CD1</option>
							<option value="10CD2" {10CD2} >10CD2</option>
							<option value="10CD3" {10CD3} >10CD3</option>
						</optgroup>
						
						<optgroup label="Khối 11">
							<option value="11CA" {11CA} >11CA</option>
							<option value="11CD1" {11CD1} >11CD1</option>
							<option value="11CD2" {11CD2} >11CD2</option>
							<option value="11CD3" {11CD3} >11CD3</option>
							<option value="11TH1" {11TH1} >11TH1</option>
							<option value="11TH2" {11TH2} >11TH2</option>
							<option value="11TL1" {11TL1} >11TL1</option>
							<option value="11TL2" {11TL2} >11TL2</option>
							<option value="11TL3" {11TL3} >11TL3</option>
							<option value="11TL4" {11TL4} >11TL4</option>
							<option value="11TL5" {11TL5} >11TL5</option>
							<option value="11TL6" {11TL6} >11TL6</option>
							<option value="11TL7" {11TL7} >11TL7</option>
							<option value="11TL8" {11TL8} >11TL8</option>
							<option value="11TL9" {11TL9} >11TL9</option>
						</optgroup>

						<optgroup label="Khối 12">
							<option value="12CA" {12CA} >12CA</option>
							<option value="12CD1" {12CD1} >12CD1</option>
							<option value="12CD2" {12CD2} >12CD2</option>
							<option value="12CD3" {12CD3} >12CD3</option>
							<option value="12TH1" {12TH1} >12TH1</option>
							<option value="12TH2" {12TH2} >12TH2</option>
							<option value="12TH3" {12TH3} >12TH3</option>
							<option value="12TL1" {12TL1} >12TL1</option>
							<option value="12TL2" {12TL2} >12TL2</option>
							<option value="12TL3" {12TL3} >12TL3</option>
							<option value="12TL4" {12TL4} >12TL4</option>
							<option value="12TL5" {12TL5} >12TL5</option>
							<option value="12TL6" {12TL6} >12TL6</option>
							<option value="12TL7" {12TL7} >12TL7</option>
							<option value="12TS" {12TS} >12TS</option>
						</optgroup>
					</select>
				</td>
			</tr>
			<tr>
				<td><b><label for="sbd">Số báo danh:</label></b></td>
				<td><input type="text" id="sbd" name="sbd" style="width: 125px;" value="{sbd_}"/></td>
			</tr>
		</table>
		<br />
		<div class="center">
			<input type="submit" value="Xem kết quả" class="button"/>
			<input type="reset" value="Nhập lại" class="button"/>
			<input type="reset" onclick="window.location.href='index.php#'" value="Về trang chủ" class="button"/>
		</div>
		<input type="hidden" name="submit" value="1"/>
		<br />
		</form>
	
		<!-- BEGIN: hs_list -->
		<hr />
		<h3 class="center">Danh sách học sinh theo yêu cầu tìm kiếm</h3>
		<table class="table center" style="width: 420px; margin: auto;">
			<tr>
				<td style="width: 40px;"><b>STT</b></td>
				<td style="width: 90px;"><b>Số báo danh:</b></td>
				<td><b>Tên học sinh:</b></td>
				<td style="width: 50px;"><b>Lớp:</b></td>
			</tr>
			<!-- BEGIN: hs -->
			<tr>
				<td><b>{stt}</b></td>
				<td>{sbd}</td>
				<td class="left"><a href="student.php?year={year}&hsname={hsname}&class={class}&sbd={sbd}&submit=1" class="link">{hsname}</a></td>
				<td>{class}</td>
			</tr>
			<!-- END: hs -->
		</table>
		<br />
		<!-- END: hs_list -->
		
		<!-- BEGIN: output -->
		<hr />
		<h3 class="center">Kết quả học tập</h3>
		<table class="table" style="width: 100%;">
			<tr>
				<td colspan="3" class="center"><b>Điểm trung bình qua các kì kiểm tra</b></td>
			</tr>
			<!-- BEGIN: hs_point -->
			<tr>
				<td style="width: 20px" class="center"><span style="font-weight:bold;" title="{db_info}">[{stt}]</span></td>
				<td><a href="xemdiem.php?db_id={db_id}&hsname={sbd}&search_method=sbd" target="_blank" class="link">{db_info}</a></td>
				<td style="width: 50px;" class="center"><span class="{kt_point_type}">{dtb}</span></td>
			</tr>
			<!-- END: hs_point -->
			<tr>
				<td class="center" colspan="3"><b>Điểm trung bình cả năm: <span class="{year_point_type}">[{year_point_db}]</span></b></td>
			</tr>
			<tr>
				<td class="center" colspan="3"><b>Biểu đồ điểm</b></td>
			</tr>
			<tr>
				<td colspan="3">
					<iframe src="chart.php?type=student" frameborder="0" style="width: 100%; height: 320px;" scrolling="no"></iframe>
				</td>
			</tr>
		</table>
		<br />
		<div class="center">
			<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
		</div>
		<!-- END: output -->
	

</div>

</div>

{FILE "template/footer.tpl"}
</body>
</html>
<!-- END: main -->