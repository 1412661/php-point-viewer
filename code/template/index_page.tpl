<div id="index_page">
<form action="xemdiem.php" method="get" id="view_point_form">
	<table class="table" style="width: 675px;">
		<tr>
			<td colspan="3" class="marquee">
				{marquee_text}
			</td>
		</tr>
		<tr>
			<td style="width: 450px;">
				<label for="db_id"><b>Chọn cơ sở dữ liệu: (Nhập ID)</b></label><span class="require">(*)</span>
				<br />
				<a href="database.php?action=view_list" target="blank_">(Xem danh sách cơ sở dữ liệu</a>
			</td>
			<td style="width: 90px;" class="center">
				<input class="center" onclick="dialog('#db_id_selector')" type="text" style="width: 65px;" name="db_id" id="db_id" value="{db_id}"/>
			</td>
			<td style="width: 135px;" title="Chọn chức năng thống kê">
				<div class="db_id_button center"><button onclick="analyze_db('statistic'); return false;" title="Xem phân tích điểm số của các lớp">Phân tích điểm</button></div>
				<div class="db_id_button center"><button onclick="analyze_db('class_rank'); return false;" title="Xem xếp hạng tập thể lớp">Xếp hạng lớp</button></div>
			</td>
		</tr>
		<tr class="input_hs bg_grey_light" style="display: none;">
			<td>
				<label for="hsname"><b>Nhập tên học sinh hoặc số báo danh:</b></label>
			</td>
			<td colspan="2"> 
				<input style="width: 210px;" type="text" id="hsname" name="hsname" value="{hsname}"/>
			</td>
		</tr>
		<tr class="input_class bg_grey_light" style="display: none;">
			<td>
				<b>Nhập lớp:</b>
			</td>
			<td colspan="2">
				<div class="select" id="class10" style="display: none">
					<option value="">Chọn lớp</option>
						<option value="10TL1" {10TL1} >Lớp 10TL1</option>
						<option value="10TL2" {10TL2} >Lớp 10TL2</option>
						<option value="10TL3" {10TL3} >Lớp 10TL3</option>
						<option value="10TL4" {10TL4} >Lớp 10TL4</option>
						<option value="10TL5" {10TL5} >Lớp 10TL5</option>
						<option value="10TL6" {10TL6} >Lớp 10TL6</option>
						<option value="10TL7" {10TL7} >Lớp 10TL7</option>
						<option value="10TL8" {10TL8} >Lớp 10TL8</option>
						<option value="10TH1" {10TH1} >Lớp 10TH1</option>
						<option value="10TH2" {10TH2} >Lớp 10TH2</option>
						<option value="10CD1" {10CD1} >Lớp 10CD1</option>
						<option value="10CD2" {10CD2} >Lớp 10CD2</option>
						<option value="10CD3" {10CD3} >Lớp 10CD3</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<div class="require center">
			</td>
		</tr>
	</table>
	
		<input type="submit" value="Xem điểm" class="button"/>
		<input type="reset" value="Nhập lại" class="button"/>
	</div>
</form>