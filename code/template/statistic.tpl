<div class="marquee">{marquee_text}</div>
<div class="hr"></div><div id="statistic">
<div class="page_header">
	<div class="header_top_hs">Phân tích điểm số</div>
	<b>Cơ sở dữ liệu: {db_name}</b><br />
</div>
<div id="tabs" style="width: 680px;">
	<ul>
		<li><a href="#tabs_global">Phân tích tổng quát</a></li>
		<!-- BEGIN: subject_link -->
		<li><a href="#tabs{sid}">{subject}</a></li>
		<!-- END: subject_link -->
	</ul>
	<div id="tabs_global">
		<table class="table tablesorter">
			<thead>
			<tr>
				<th style="width: 120px;">Lớp</th>
				<th style="width: 55px;">Sĩ số</th>
				<th style="width: 55px;" title="Điểm dưới 5" class="bg_red">&lt;5</th>
				<th style="width: 55px;" title="Điểm từ 5 đến thấp hơn 6.5">&#91;5;6.5&#41;</th>
				<th style="width: 55px;" title="Điểm từ 6.5 đến thấp hơn 8">&#91;6.5;8&#41;</th>
				<th style="width: 55px;" title="Điểm từ 8 đến thấp hơn 10" class="bg_green"><span class="medium_point">&#91;8;10&#41;</span></th>
				<th style="width: 55px;" title="Điểm 10 tròn" class="bg_green"><span class="high_point">10 tròn</span></th>
				<th style="width: 80px;" title="Điểm trung bình" class="bg_grey_light">Ðiểm TB</th>
				<th style="width: 80px;" title="Phương sai và độ lệch chuẩn đo mức độ phân tán của các số liệu trong mẫu quanh số trung bình. Phương sai và độ lệch chuẩn càng lớn thì độ phân tán càng lớn. (SGK Đại số 10 Nâng cao, trang 175)" class="bg_grey_light">Phương sai</th>
			</tr>
			</thead>
			<tbody>
			<!-- BEGIN: global_point -->
			<tr>
				<td><a href="{link_global_class}"><b>Lớp {global_class}</b></a></td>
				<td>{global_count_hs}</td>
				<td title="Tỉ lệ: {global_percent1}%" class="bg_red">{global_point1}</td>
				<td title="Tỉ lệ: {global_percent2}%">{global_point2}</td>
				<td title="Tỉ lệ: {global_percent3}%">{global_point3}</td>
				<td title="Tỉ lệ: {global_percent4}%" class="bg_green"><span class="medium_point">{global_point4}</span></td>
				<td title="Tỉ lệ: {global_percent5}%" class="bg_green"><span class="high_point">{global_point5}</span></td>
				<td class="bg_grey_light">{global_pointtb}</td>
				<td class="bg_grey_light" title="Độ lệch chuẩn: {global_dlc}">{global_phsai}</td>
			</tr>
			<!-- END: global_point -->
			</tbody>
		</table>
		
		<div class="header_top_hs">Top {bxh_number} học sinh đầu bảng xếp hạng</div>
				<table style="float: left; width: 310px" class="table bg_red center">
			<tr>
				<td colspan="3">
					<span class="low_point">Điểm trung bình thấp nhất</span>
				</td>
			</tr>
			<tr>
				<td style="width: 180px;"><b>Tên học sinh</b></td>
				<td><b>Lớp</b></td>
				<td style="width: 60px;"><b>Điểm TB</b></td>
			</tr>
			<!-- BEGIN: top_last -->
			<tr>
				<td title="Số báo danh: {top_last_sbd}" class="left">					<a href="xemdiem.php?db_id={db_id}&hsname={top_last_sbd}&search_method=sbd" class="hs_last">{top_last_hsname}</a>				</td>
				<td title="Xếp hạng: {top_last_rank}">{top_last_class}</td>
				<td title="Xếp hạng: {top_last_rank}">					{top_last_hspoint}				</td>
			</tr>
			<!-- END: top_last -->
		</table>
		<table style="float: right; width: 310px;" class="table bg_green center">
			<tr>
				<td colspan="3">
					<span class="high_point">Điểm trung bình cao nhất</span>
				</td>
			</tr>
			<tr>
				<td style="width: 180px;"><b>Tên học sinh:</b></td>
				<td><b>Lớp:</b></td>
				<td style="width: 60px;"><b>Điểm TB:</b></td>
			</tr>
			<!-- BEGIN: top_first -->
			<tr>
				<td title="Số báo danh: {top_first_sbd}" class="left">					<a href="xemdiem.php?db_id={db_id}&hsname={top_first_sbd}&search_method=sbd" class="hs_first">{top_first_hsname}</a>				</td>
				<td title="Xếp hạng: {top_first_rank}">{top_first_class}</td>
				<td title="Xếp hạng: {top_first_rank}">					<span class="high_point">{top_first_hspoint}</span>				</td>
			</tr>
			<!-- END: top_first -->
		</table>
		<div class="clear"></div>
		<div class="header_top_hs">Điểm trung bình của tất cả học sinh là: <span class="low_point">{avg_point}</span> điểm</div>
	</div>
	
	<!-- BEGIN: tabs -->
	<div id="tabs{tid}">
	<table class="table tablesorter">
		<thead>
		<tr>
			<th style="width: 120px;">Lớp</th>
			<th style="width: 55px;">Sĩ số</th>
			<th style="width: 55px;" title="Điểm dưới 5" class="bg_red">&lt;5</th>
			<th style="width: 55px;" title="Điểm từ 5 đến thấp hơn 6.5">&#91;5;6.5&#41;</th>
			<th style="width: 55px;" title="Điểm từ 6.5 đến thấp hơn 8">&#91;6.5;8&#41;</th>
			<th style="width: 55px;" title="Điểm từ 8 đến thấp hơn 10" class="bg_green"><span class="medium_point">&#91;8;10&#41;</span></th>
			<th style="width: 55px;" title="Điểm 10 tròn" class="bg_green"><span class="high_point">10 tròn</span></th>
			<th style="width: 80px;" title="Điểm trung bình" class="bg_grey_light">Ðiểm TB</th>
			<th style="width: 80px;" title="Phương sai và độ lệch chuẩn đo mức độ phân tán của các số liệu trong mẫu quanh số trung bình. Phương sai và độ lệch chuẩn càng lớn thì độ phân tán càng lớn. (SGK Đại số 10 Nâng cao, trang 175)" class="bg_grey_light">Phương sai</th>
		</tr>
		</thead>
		<tbody>
		<!-- BEGIN: tabs_point -->
		<tr>
			<td><a href="{link_tabs_class}"><b>Lớp {tabs_class}</b></a></td>
			<td>{tabs_count_hs}</td>
			<td title="Tỉ lệ: {tabs_percent1}%" class="bg_red">{tabs_point1}</td>
			<td title="Tỉ lệ: {tabs_percent2}%">{tabs_point2}</td>
			<td title="Tỉ lệ: {tabs_percent3}%">{tabs_point3}</td>
			<td title="Tỉ lệ: {tabs_percent4}%" class="bg_green"><span class="medium_point">{tabs_point4}</span></td>
			<td title="Tỉ lệ: {tabs_percent5}%" class="bg_green"><span class="high_point">{tabs_point5}</span></td>
			<td class="bg_grey_light">{tabs_pointtb}</td>
			<td class="bg_grey_light" title="Độ lệch chuẩn: {tabs_dlc}">{tabs_phsai}</td>
		</tr>
		<!-- END: tabs_point -->
		</tbody>
	</table>
	</div>
	<!-- END: tabs -->
</div>
<div class="button_group">
	<button onclick="window.location.reload()">Tải lại trang</button>
	<a href="index.php" class="button">Về trang chủ</a>	<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
</div></div>