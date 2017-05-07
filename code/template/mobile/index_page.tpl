<div id="index_page"><div class="header">Xem và phân tích điểm - PHP Point Viewer</div><br />
<form action="xemdiem.php" method="get" id="view_point_form">
	<table class="table" style="width: 100%;">
		<tr>
			<td colspan="3" class="marquee">
				{marquee_text}
			</td>
		</tr>
		<tr>
			<td>
				<label for="db_id"><b>Chọn cơ sở dữ liệu: (Nhập ID)</b></label><span class="require">(*)</span>
				<br />
				<a href="database.php?action=view_list" target="blank_">(Xem danh sách cơ sở dữ liệu)</a>
			</td>
			<td style="width: 70px;">
				<input style="width: 60px;" type="text" name="db_id" id="db_id" value="{db_id}"/>
			</td>
			<td style="width: 140px">
				<div class="center"><button style="width: 115px;" onclick="analyze_db('statistic'); return false;" title="Xem phân tích điểm số của các lớp">Phân tích điểm</button></div>
				<div class="center"><button style="width: 115px;" onclick="analyze_db('class_rank'); return false;" title="Xem xếp hạng tập thể lớp">Xếp hạng lớp</button></div>
			</td>
		</tr>		<tr>			<td>				<b>Chọn kiểu tìm kiếm:</b><span class="require">(*)</span><br />				<div style="font-style: italic">					Bạn phải chọn kiểu tìm kiếm trước				</div>			</td>					<td colspan="2">				<input type="radio" onclick="input('input_sbd')" name="search_method" value="sbd" {sbd} id="r1" /><label for="r1">&nbsp;&nbsp;Tìm theo số báo danh</label>				<br />				<input type="radio" onclick="input('input_hs')" name="search_method" value="hs" {hs} id="r2" /><label for="r2">&nbsp;&nbsp;Tìm theo tên học sinh</label>				<br />				<input type="radio" onclick="input('input_class')" name="search_method" value="class" {class} id="r3"  /><label for="r3">&nbsp;&nbsp;<b>Xem bảng điểm của lớp</b></label>				<br />			</td>		</tr>
		<tr class="input_hs bg_grey_light" style="display: none;">
			<td>
				<label for="hsname"><b>Nhập tên học sinh hoặc số báo danh:</b></label>
			</td>
			<td colspan="2"> 
				<input type="text" style="width: 210px;" id="hsname" name="hsname" value="{hsname}"/>
			</td>
		</tr>
		<tr class="input_class bg_grey_light" style="display: none;">
			<td>
				<b>Nhập lớp:</b>
			</td>
			<td colspan="2">				<select name="class" style="width: 90px;">
					<option value="">Chọn lớp</option>
					<optgroup label="Khối 10">
						<option value="10TL1" {10TL1}>10TL1</option>
						<option value="10TL2" {10TL2}>10TL2</option>
						<option value="10TL3" {10TL3}>10TL3</option>
						<option value="10TL4" {10TL4}>10TL4</option>
						<option value="10TL5" {10TL5}>10TL5</option>
						<option value="10TL6" {10TL6}>10TL6</option>
						<option value="10TL7" {10TL7}>10TL7</option>
						<option value="10TL8" {10TL8}>10TL8</option>
						<option value="10TH1" {10TH1}>10TH1</option>
						<option value="10TH2" {10TH2}>10TH2</option>
						<option value="10CD1" {10CD1}>10CD1</option>
						<option value="10CD2" {10CD2}>10CD2</option>
						<option value="10CD3" {10CD3}>10CD3</option>
					</optgroup>					
					<optgroup label="Khối 11">
						<option value="11CA" {11CA}>11CA</option>
						<option value="11CD1" {11CD1}>11CD1</option>
						<option value="11CD2" {11CD2}>11CD2</option>						<option value="11CD3" {11CD3}>11CD3</option>
						<option value="11TH1" {11TH1}>11TH1</option>
						<option value="11TH2" {11TH2}>11TH2</option>
						<option value="11TL1" {11TL1}>11TL1</option>
						<option value="11TL2" {11TL2}>11TL2</option>
						<option value="11TL3" {11TL3}>11TL3</option>
						<option value="11TL4" {11TL4}>11TL4</option>
						<option value="11TL5" {11TL5}>11TL5</option>
						<option value="11TL6" {11TL6}>11TL6</option>
						<option value="11TL7" {11TL7}>11TL7</option>
						<option value="11TL8" {11TL8}>11TL8</option>
						<option value="11TL9" {11TL9}>11TL9</option>
					</optgroup>
					<optgroup label="Khối 12">
						<option value="12CA" {12CA} >Lớp 12CA</option>
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
			<td colspan="3">
				<div class="require center">					Cảm ơn các bạn đã sử dụng sản phẩm !				</div>
			</td>
		</tr>
	</table>
	<br />	<div class="center">
		<input type="submit" value="Xem điểm" class="button"/>
		<input type="reset" value="Nhập lại" class="button"/>
	</div>	<br />
</form></div>