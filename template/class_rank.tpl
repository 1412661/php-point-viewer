<div id="class_rank"><div class="marquee">
	{marquee_text}
</div><!-- BEGIN: class_rank_header --><span id="top"></span>
<div class="hr"></div><div class="header">
	<h3>Tính điểm xếp hạng lớp</h3>	<!-- BEGIN: class_rank_detail_header -->
	Xem điểm cộng/trừ chi tiết lớp: <b>{class}</b><br />	<!-- END: class_rank_detail_header -->
	Cơ sở dữ liệu: <b>{db_name}</b><br />	<a href="class_rank.php?action=view_law">Xem quy chế xếp hạng lớp</a>
</div><!-- END: class_rank_header -->
<div style="width: 680px;">	<!-- BEGIN: class_rank_overview -->
	<table class="table" style="text-align: center; margin-bottom: 25px;" align="center">		<tr>
			<td style="width: 70px;"><b>Xếp hạng</b></td>			<td style="width: 100px;"><b>Lớp:</b></td>
			<td style="width: 50px;"><b>Sĩ số:</b></td>			<td style="width: 120px;" class="bg_green"><span class="medium_point">Tổng điểm cộng</span></td>
			<td style="width: 120px;" class="bg_red"><span class="low_point">Tổng điểm trừ</span></td>
			<td style="width: 120px;" class="bg_green"><span class="high_point">Tổng hợp điểm</span></td>
		</tr>
		<!-- BEGIN: class -->		<tr>
			<td><b>{rank}</b></td>
			<td><a href="class_rank.php?action=more_detail&db_id={db_id}&class={class}" class="link" target="_blank"><b>{class}</b></a></td>
			<td>{count_hs}</td>
			<td class="bg_green"><span class="medium_point">+{total_add_point}</span></td>
			<td class="bg_red"><span class="low_point">-{total_subtr_point}</span></td>
			<td class="bg_green"><span class="high_point">{total_point}</span></td>
		</tr>
		<!-- END: class -->
	</table>	<iframe src="chart.php?type=class_rank" frameborder="0" style="width: 100%; height: 1150px;" scrolling="no"></iframe>
	<div class="description">(Bấm vào tên lớp để xem kết quả chi tiết)</div>	
	<div class="button_group">		<a class="button" href="#top">Về đầu trang</a>		<a class="button" href="index.php#">Về trang chủ</a>		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>	</div>
	<!-- END: class_rank_overview -->
											
	
	<!-- BEGIN: class_rank_detail -->
	<div class="wrap">
		<table>
			<tr>
				<td rowspan="2" style="width: 350px;"><span class="table_header">Điều kiện yêu cầu</span></td>
				<td colspan="2" style="width: 160px;"><span class="table_header">Điểm tích lũy</span></td>
				<td rowspan="2" style="width: 80px;"><span class="table_header">Tổng điểm</span></td>
			</tr>
			<tr>
				<td style="width: 80px;"><b>Điểm cộng</b></td>
				<td style="width: 80px;"><b>Điểm trừ</b></td>
			</tr>
			<tr>
				<td colspan="4" class="bg_grey_bold">Điều kiện cho cá nhân</td>
			</tr>
			<tr>
				<td class="left">Mỗi học sinh đạt điểm 10 tròn ở một trong các môn</td>
				<td><span class="high_point">+{EACH_HS_10P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_HS_10P}</span></td>
			</tr>
			<tr>
				<td class="left">Mỗi học sinh đạt điểm từ 8 đến dưới 10</td>
				<td><span class="high_point">+{EACH_HS_8P_10P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_HS_8P_10P}</span></td>
			</tr>
			<tr>
				<td class="left">Mỗi học sinh đạt điểm dưới 5</td>
				<td></td>
				<td><span class="low_point">-{EACH_L5P}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_L5P}</span></td>
			</tr>
			<tr>
				<td class="bg_grey"><b>Với bảng xếp hạng xanh</b></td>
				<td colspan="3" style="border-right: hidden;"></td>
			</tr>
			<tr>
				<td class="left">Học sinh đứng vị thứ 1</td>
				<td><span class="high_point">+{HS_TOP_1_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_1_GREEN}</span></td>
			</tr>
			<tr>
				<td class="left">Học sinh đứng vị thứ 2</td>
				<td><span class="high_point">+{HS_TOP_2_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_2_GREEN}</span></td>
			</tr>
			<tr>
				<td class="left">Học sinh đứng vị thứ 3</td>
				<td><span class="high_point">+{HS_TOP_3_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_3_GREEN}</span></td>
			</tr>
			<tr>
				<td class="left">Các học sinh còn lại</td>
				<td><span class="high_point">+{HS_TOP_GREEN}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_HS_TOP_GREEN}</span></td>
			</tr>
			<tr>
				<td class="bg_grey"><b>Với bảng xếp hạng đỏ</b></td>
				<td colspan="3" style="border-right: hidden;"></td>
			</tr>			<tr>
				<td class="left">Học sinh đứng vị thứ 1</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_1_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_1_RED}</span></td>
			</tr>
			<tr>
				<td class="left">Học sinh đứng vị thứ 2</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_2_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_2_RED}</span></td>
			</tr>
			<tr>
				<td class="left">Học sinh đứng vị thứ 3</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_3_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_3_RED}</span></td>
			</tr>
			<tr>
				<td class="left">Các học sinh còn lại</td>
				<td></td>
				<td><span class="low_point">-{HS_TOP_RED}</span></td>
				<td><span class="low_point">-{TOTAL_HS_TOP_RED}</span></td>
			</tr>
			<tr>
				<td colspan="4" style="height: 20px; border-left: hidden; border-right: hidden;"></td>
			</tr>			<tr>
				<td colspan="4" class="bg_grey_bold">Điều kiện cho tập thể</td>			</tr>
			<tr>				<td class="left">Lớp có điểm trung bình cao nhất</td>
				<td><span class="high_point">+{CLASS_TOP_HPOINT}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_HPOINT}</span></td>			</tr>
			<tr>				<td class="left">Lớp có điểm trung bình thấp nhất</td>
				<td></td>				<td><span class="low_point">-{CLASS_TOP_LPOINT}</span></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_LPOINT}</span></td>			</tr>
			<tr>				<td class="left">Lớp có phương sai thấp nhất</td>
				<td><span class="high_point">+{CLASS_TOP_LVARIANCE}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_LVARIANCE}</span></td>			</tr>
			<tr>				<td class="left">Lớp có phương sai cao nhất</td>
				<td></td>				<td><span class="low_point">-{CLASS_TOP_HVARIANCE}</span></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_HVARIANCE}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều nhất</td>
				<td><span class="high_point">+{CLASS_TOP_10P_1}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_1}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều thứ nhì</td>
				<td><span class="high_point">+{CLASS_TOP_10P_2}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_2}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều thứ ba</td>
				<td><span class="high_point">+{CLASS_TOP_10P_3}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_10P_3}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều nhất</td>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_1}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_1}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều thứ nhì</td>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_2}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_2}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều thứ ba</td>
				<td><span class="high_point">+{CLASS_TOP_8P_10P_3}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_CLASS_TOP_8P_10P_3}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều nhất</td>
				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_1}</span></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_1}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều thứ nhì</td>
				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_2}</span></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_2}</span></td>			</tr>
			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều thứ 3</td>
				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_3}</span></td>
				<td><span class="low_point">-{TOTAL_CLASS_TOP_L5P_3}</span></td>			</tr>
			<tr>				<td colspan="4" style="height: 20px; border-left: hidden; border-right: hidden;">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="4" class="bg_grey_bold">Các trường hợp đặc biệt</td>
			</tr>
			<tr>
				<td class="left">Lớp có điểm trung bình từ 8.000 trở lên</td>
				<td><span class="high_point">+{EACH_CLASS_8P}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_8P}</span></td>
			</tr>
			<tr>
				<td class="left">Lớp có phương sai từ 1.200 trở xuống</td>
				<td><span class="high_point">+{EACH_CLASS_VARIANCE_12}</span></td>
				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_VARIANCE_12}</span></td>
			</tr>
			<tr>				<td class="left">Lớp có phương sai từ 3.500 trở lên</td>
				<td></td>				<td><span class="low_point">-{EACH_CLASS_VARIANCE_35}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_VARIANCE_35}</span></td>			</tr>
			<tr>				<td class="left">Lớp có điểm trung bình từ 6.000 trở xuống</td>
				<td></td>				<td><span class="low_point">-{EACH_CLASS_6P}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_6P}</span></td>			</tr>
			<tr>				<td class="left">Lớp không có học sinh nào có điểm dưới 5</td>
				<td><span class="high_point">+{EACH_CLASS_NO_5P}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_NO_5P}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 80% học sinh đạt điểm từ 6.5 trở lên</td>
				<td><span class="high_point">+{EACH_CLASS_80PER_65P}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_80PER_65P}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 50% học sinh đạt điểm từ 8 trở lên</td>
				<td><span class="high_point">+{EACH_CLASS_50PER_8P}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_50PER_8P}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 5% học sinh đạt điểm 10 tròn</td>
				<td><span class="high_point">+{EACH_CLASS_5PER_10P}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_5PER_10P}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 2 học sinh nằm trong top 3 bảng xếp hạng xanh</td>
				<td><span class="high_point">+{EACH_CLASS_TOP_2HS_H}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_TOP_2HS_H}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 3 học sinh nằm trong top 3 bảng xếp hạng xanh</td>
				<td><span class="high_point">+{EACH_CLASS_TOP_3HS_H}</span></td>				<td></td>
				<td><span class="high_point">+{TOTAL_EACH_CLASS_TOP_3HS_H}</span></td>			</tr>
			<tr>
				<td class="left">Lớp có 2 học sinh nằm trong top 3 bảng xếp hạng đỏ</td>
				<td></td>				<td><span class="low_point">-{EACH_CLASS_TOP_2HS_L}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_TOP_2HS_L}</span></td>			</tr>
			<tr>				<td class="left">Lớp có 3 học sinh nằm trong top 3 bảng xếp hạng đỏ</td>
				<td></td>				<td><span class="low_point">-{EACH_CLASS_TOP_3HS_L}</span></td>
				<td><span class="low_point">-{TOTAL_EACH_CLASS_TOP_3HS_L}</span></td>			</tr>
		</table>
		<table class="summary">
			<tr>
				<td rowspan="2" class="bg_grey" style="width: 200px;">Tổng điểm</td>
				<td class="bg_green" style="width: 130px;">Tổng điểm cộng</td>
				<td class="bg_red" style="width: 130px;">Tổng điểm trừ</td>
				<td class="bg_green" style="width: 130px;">Tổng điểm</td>
			</tr>
			<tr>
				<td class="bg_green"><span class="medium_point">+{TOTAL_ADD_POINT}</span></td>
				<td class="bg_red"><span class="low_point">-{TOTAL_SUBTR_POINT}</span></td>
				<td class="bg_green"><span class="high_point">{TOTAL_POINT}</span></td>
			</tr>
		</table>
	</div>		<div class="button_group">		<a class="button" href="#top">Về đầu trang</a>		<a class="button" href="index.php#">Về trang chủ</a>		<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>	</div>
	<!-- END: class_rank_detail -->						<!-- BEGIN: class_rank_law -->	<div id="class_rank_law">	<h2>Quy chế xếp hạng tập thể lớp</h2>		<table>			<tr>				<td rowspan="2" style="width: 400px;"><span class="table_header">Điều kiện yêu cầu</span></td>				<td colspan="2" style="width: 160px;"><span class="table_header">Điểm tích lũy</span></td>			</tr>			<tr>				<td style="width: 80px;"><b>Điểm cộng</b></td>				<td style="width: 80px;"><b>Điểm trừ</b></td>			</tr>			<tr>				<td colspan="3" class="bg_grey_bold">Điều kiện cho cá nhân</td>			</tr>			<tr>				<td class="left">Mỗi học sinh đạt điểm 10 tròn ở một trong các môn</td>				<td><span class="high_point">+{EACH_HS_10P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Mỗi học sinh đạt điểm từ 8 đến dưới 10</td>				<td><span class="high_point">+{EACH_HS_8P_10P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Mỗi học sinh đạt điểm dưới 5</td>				<td></td>				<td><span class="low_point">-{EACH_L5P}</span></td>			</tr>			<tr>				<td class="bg_grey">Với bảng xếp hạng xanh:</td>				<td colspan="2"></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 1</td>				<td><span class="high_point">+{HS_TOP_1_GREEN}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 2</td>				<td><span class="high_point">+{HS_TOP_2_GREEN}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 3</td>				<td><span class="high_point">+{HS_TOP_3_GREEN}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Các học sinh còn lại</td>				<td><span class="high_point">+{HS_TOP_GREEN}</span></td>				<td></td>			</tr>			<tr>				<td class="bg_grey">Với bảng xếp hạng đỏ:</td>				<td colspan="2"></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 1</td>				<td></td>				<td><span class="low_point">-{HS_TOP_1_RED}</span></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 2</td>				<td></td>				<td><span class="low_point">-{HS_TOP_2_RED}</span></td>			</tr>			<tr>				<td class="left">Học sinh đứng vị thứ 3</td>				<td></td>				<td><span class="low_point">-{HS_TOP_3_RED}</span></td>			</tr>			<tr>				<td class="left">Các học sinh còn lại</td>				<td></td>				<td><span class="low_point">-{HS_TOP_RED}</span></td>			</tr>			<tr>				<td colspan="3">&nbsp;</td>			</tr>			<tr>				<td colspan="3" class="bg_grey_bold">Điều kiện cho tập thể:</td>			</tr>			<tr>				<td class="left">Lớp có điểm trung bình cao nhất</td>				<td><span class="high_point">+{CLASS_TOP_HPOINT}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có điểm trung bình thấp nhất</td>				<td></td>				<td><span class="low_point">-{CLASS_TOP_LPOINT}</span></td>			</tr>			<tr>				<td class="left">Lớp có phương sai thấp nhất</td>				<td><span class="high_point">+{CLASS_TOP_LVARIANCE}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có phương sai cao nhất</td>				<td></td>				<td><span class="low_point">-{CLASS_TOP_HVARIANCE}</span></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều nhất</td>				<td><span class="high_point">+{CLASS_TOP_10P_1}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều thứ nhì</td>				<td><span class="high_point">+{CLASS_TOP_10P_2}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm 10 tròn nhiều thứ ba</td>				<td><span class="high_point">+{CLASS_TOP_10P_3}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều nhất</td>				<td><span class="high_point">+{CLASS_TOP_8P_10P_1}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều thứ nhì</td>				<td><span class="high_point">+{CLASS_TOP_8P_10P_2}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm từ 8 đến 10 nhiều thứ ba</td>				<td><span class="high_point">+{CLASS_TOP_8P_10P_3}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều nhất</td>				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_1}</span></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều thứ nhì</td>				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_2}</span></td>			</tr>			<tr>				<td class="left">Lớp có số học sinh đạt điểm dưới 5 nhiều thứ 3</td>				<td></td>				<td><span class="low_point">-{CLASS_TOP_L5P_3}</span></td>			</tr>			<tr>				<td colspan="3">&nbsp;</td>			</tr>			<tr>				<td colspan="3" class="bg_grey_bold">Các trường hợp đặc biệt</td>			</tr>			<tr>				<td class="left">Lớp có điểm trung bình từ 8.000 trở lên</td>				<td><span class="high_point">+{EACH_CLASS_8P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có phương sai từ 1.200 trở xuống</td>				<td><span class="high_point">+{EACH_CLASS_VARIANCE_12}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có phương sai từ 3.500 trở lên</td>				<td></td>				<td><span class="low_point">-{EACH_CLASS_VARIANCE_35}</span></td>			</tr>			<tr>				<td class="left">Lớp có điểm trung bình từ 6.000 trở xuống</td>				<td></td>				<td><span class="low_point">-{EACH_CLASS_6P}</span></td>			</tr>			<tr>				<td class="left">Lớp không có học sinh nào có điểm dưới 5</td>				<td><span class="high_point">+{EACH_CLASS_NO_5P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 80% học sinh đạt điểm từ 6.5 trở lên</td>				<td><span class="high_point">+{EACH_CLASS_80PER_65P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 50% học sinh đạt điểm từ 8 trở lên</td>				<td><span class="high_point">+{EACH_CLASS_50PER_8P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 5% học sinh đạt điểm 10 tròn</td>				<td><span class="high_point">+{EACH_CLASS_5PER_10P}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 2 học sinh nằm trong top 3 bảng xếp hạng xanh</td>				<td><span class="high_point">+{EACH_CLASS_TOP_2HS_H}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 3 học sinh nằm trong top 3 bảng xếp hạng xanh</td>				<td><span class="high_point">+{EACH_CLASS_TOP_3HS_H}</span></td>				<td></td>			</tr>			<tr>				<td class="left">Lớp có 2 học sinh nằm trong top 3 bảng xếp hạng đỏ</td>				<td></td>				<td><span class="low_point">-{EACH_CLASS_TOP_2HS_L}</span></td>			</tr>			<tr>				<td class="left">Lớp có 3 học sinh nằm trong top 3 bảng xếp hạng đỏ</td>				<td></td>				<td><span class="low_point">-{EACH_CLASS_TOP_3HS_L}</span></td>			</tr>		</table>	</div>	<div class="button_group">		<button onclick="window.location.reload()">Tải lại trang</button>		<a class="button" href="index.php">Về trang chủ</a>		<button onclick="share_fb('http://localhost/xemdiem/class_rank.php?action=view_law')">Chia sẻ lên Facebook</button>	</div>	<!-- END: class_rank_law -->
</div></div>