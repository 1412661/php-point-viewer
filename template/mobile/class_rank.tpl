<div id="class_rank">
	{marquee_text}
</div>
	<h3>Tính điểm xếp hạng lớp</h3>
	Xem điểm cộng/trừ chi tiết lớp: <b>{class}</b><br />
	Cơ sở dữ liệu: <b>{db_name}</b><br />
</div>
	
	<table class="table center" style="width: 100%;">
			<td>Hạng:</td>
			<td>Sĩ số:</td>
			<td class="bg_red"><span class="low_point">Điểm trừ</span></td>
			<td class="bg_green"><span class="high_point">Tổng điểm</span></td>
		</tr>
		<!-- BEGIN: class -->
			<td><b>{rank}</b></td>
			<td class="left"><a href="class_rank.php?action=more_detail&db_id={db_id}&class={class}" class="link" target="_blank"><b>{class}</b></a></td>
			<td>{count_hs}</td>
			<td class="bg_green"><span class="medium_point">+{total_add_point}</span></td>
			<td class="bg_red"><span class="low_point">-{total_subtr_point}</span></td>
			<td class="bg_green"><span class="high_point">{total_point}</span></td>
		</tr>
		<!-- END: class -->
	</table>
	<div class="center"><i>(Bấm vào tên lớp để xem kết quả chi tiết)</i></div>
	<!-- END: class_rank_overview -->
	
	
	<!-- BEGIN: class_rank_detail -->
	<div class="wrap">
		<table>
			<tr>
				<td rowspan="2"><b>Điều kiện yêu cầu</b></td>
				<td colspan="2"><b>Điểm tích lũy</b></td>
				<td rowspan="2"><b>Tổng điểm</b></td>
			</tr>
			<tr>
				<td><b>Điểm cộng</b></td>
				<td><b>Điểm trừ</b></td>
			</tr>
			<tr>
				<td colspan="4" class="bg_grey_bold">Điều kiện cho cá nhân</td>
			</tr>
			<tr>
				<td>Mỗi học sinh đạt điểm 10 tròn ở một trong các môn</td>
				<td><span class="high_point">+{EACH_HS_10P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_HS_10P}</span></td>
			</tr>
			<tr>
				<td>Mỗi học sinh đạt điểm từ 8 đến dưới 10</td>
				<td><span class="high_point">+{EACH_HS_8P_10P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_HS_8P_10P}</span></td>
			</tr>
			<tr>
				<td>Mỗi học sinh đạt điểm dưới 5</td>
				<td></td>
				<td><span class="low_point">-{EACH_L5P}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_L5P}</span></td>
			</tr>
			<tr>
				<td class="bg_grey"><b>Với bảng xếp hạng xanh</b></td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>Học sinh đứng vị thứ 1</td>
				<td><span class="high_point">+{HS_TOP_1_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_1_GREEN}</span></td>
			</tr>
			<tr>
				<td>Học sinh đứng vị thứ 2</td>
				<td><span class="high_point">+{HS_TOP_2_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_2_GREEN}</span></td>
			</tr>
			<tr>
				<td>Học sinh đứng vị thứ 3</td>
				<td><span class="high_point">+{HS_TOP_3_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_3_GREEN}</span></td>
			</tr>
			<tr>
				<td>Các học sinh còn lại</td>
				<td><span class="high_point">+{HS_TOP_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_GREEN}</span></td>
			</tr>
			<tr>
				<td class="bg_grey"><b>Với bảng xếp hạng đỏ</b></td>
				<td colspan="3"></td>
			</tr>
				<td>Học sinh đứng vị thứ 1</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_1_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_1_RED}</span></td>
			</tr>
			<tr>
				<td>Học sinh đứng vị thứ 2</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_2_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_2_RED}</span></td>
			</tr>
			<tr>
				<td>Học sinh đứng vị thứ 3</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_3_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_3_RED}</span></td>
			</tr>
			<tr>
				<td>Các học sinh còn lại</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_RED}</span></td>
			</tr>
				<td colspan="4" class="bg_grey_bold">Điều kiện cho tập thể</td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_HPOINT}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_HPOINT}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_LPOINT}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_LVARIANCE}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_LVARIANCE}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_HVARIANCE}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_10P_1}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_1}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_10P_2}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_2}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_10P_3}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_3}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_1}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_1}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_2}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_2}</span></td>
			<tr>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_3}</span></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_3}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_1}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_2}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_3}</span></td>
			<tr>
			</tr>
			<tr>
				<td colspan="4" class="bg_grey_bold">Các trường hợp đặc biệt</td>
			</tr>
			<tr>
				<td>Lớp có điểm trung bình từ 8.000 trở lên</td>
				<td><span class="high_point">+{EACH_CLASS_8P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_8P}</span></td>
			</tr>
			<tr>
				<td>Lớp có phương sai từ 1.200 trở xuống</td>
				<td><span class="high_point">+{EACH_CLASS_VARIANCE_12}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_VARIANCE_12}</span></td>
			</tr>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_VARIANCE_35}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_6P}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_NO_5P}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_NO_5P}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_80PER_65P}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_80PER_65P}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_50PER_8P}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_50PER_8P}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_5PER_10P}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_5PER_10P}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_TOP_2HS_H}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_TOP_2HS_H}</span></td>
			<tr>
				<td><span class="high_point">+{EACH_CLASS_TOP_3HS_H}</span></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_TOP_3HS_H}</span></td>
			<tr>
				<td>Lớp có 2 học sinh nằm trong top 3 bảng xếp hạng đỏ</td>
				<td></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_TOP_2HS_L}</span></td>
			<tr>
				<td></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_TOP_3HS_L}</span></td>
		</table>
		<table class="summary">
			<tr>
				<td rowspan="2" class="bg_grey">Tổng điểm</td>
				<td class="bg_green">Tổng điểm cộng</td>
				<td class="bg_red">Tổng điểm trừ</td>
				<td class="bg_green">Tổng điểm</td>
			</tr>
			<tr>
				<td class="bg_green"><span class="medium_point">+{TOTAL_ADD_POINT}</span></td>
				<td class="bg_red"><span class="low_point">-{TOTAL_SUBTR_POINT}</span></td>
				<td class="bg_green"><span class="high_point">{TOTAL_POINT}</span></td>
			</tr>
		</table>
	</div>
	<!-- END: class_rank_detail -->