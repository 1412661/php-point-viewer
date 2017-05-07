<div class="marquee">{marquee_text}</div>
<hr /><div id="statistic">
<div class="center">
	<div class="header">Phân tích điểm số</div>
	<b>Cơ sở dữ liệu: {db_name}</b><br />
</div><br />

	<table class="table center" style="width: 100%;">
		<tr style="font-weight: bold;">
			<td style="width: 90px;">Lớp</td>
			<td>Sĩ số</td>
			<td class="bg_red"><span class="low_point">&lt;5</span></td>
			<td>&#91;5;6.5&#41;</td>
			<td>&#91;6.5;8&#41;</td>
			<td class="bg_green"><span class="medium_point">&#91;8;10&#41;</span></td>
			<td class="bg_green"><span class="high_point">10 tròn</span></td>
			<td class="bg_grey_light">Ðiểm TB</td>
			<td class="bg_grey_light">Phương sai</td>
			<td class="bg_grey_light">Độ lệch chuẩn</td>
		</tr>
		<!-- BEGIN: global_point -->
		<tr>
			<td class="left"><a href="{link_global_class}"><b>Lớp {global_class}</b></a></td>
			<td>{global_count_hs}</td>
			<td class="bg_red"><span class="low_point">{global_point1}<!--<br />{global_percent1}%--></span></td>
			<td>{global_point2}<!--<br />{global_percent2}%--></td>
			<td>{global_point3}<!--<br />{global_percent3}%--></td>
			<td class="bg_green"><span class="medium_point">{global_point4}<!--<br />{global_percent4}%--></span></td>
			<td class="bg_green"><span class="high_point">{global_point5}<!--<br />{global_percent5}%--></span></td>
			<td class="bg_grey_light">{global_pointtb}</td>
			<td class="bg_grey_light">{global_phsai}</td>
			<td class="bg_grey_light">{global_dlc}</td>
		</tr>
		<!-- END: global_point -->
	</table>
	<br /><hr /><br />
	<div class="header">Top {bxh_number} học sinh đầu bảng xếp hạng</div>
	<br />	<table style="float: left; width: 270px;" class="table bg_red center">
		<tr>
			<td colspan="3">
				<span class="low_point">Điểm trung bình thấp nhất</span>
			</td>
		</tr>
		<tr style="font-weight: bold;">
			<td>Tên học sinh</td>
			<td>Lớp</td>
			<td style="width: 65px;">Điểm TB</td>
		</tr>
		<!-- BEGIN: top_last -->
		<tr>
			<td class="left">				<a href="xemdiem.php?db_id={db_id}&hsname={top_last_sbd}&search_method=sbd">{top_last_hsname}<!--<br />SBD: {top_last_sbd}--></a>			</td>
			<td>{top_last_class}</td>
			<td>				<span class="low_point">{top_last_hspoint}<!-- - STT: {top_last_rank}--></span>			</td>
		</tr>
		<!-- END: top_last -->
	</table>
	<table style="float: right; width: 270px;" class="table bg_green center">
		<tr>
			<td colspan="3">
				<span class="high_point">Điểm trung bình cao nhất</span>
			</td>
		</tr>
		<tr style="font-weight: bold;">
			<td>Tên học sinh:</td>
			<td>Lớp:</td>
			<td style="width: 65px;"><b>Điểm TB:</b></td>
		</tr>
		<!-- BEGIN: top_first -->
		<tr>
			<td class="left">				<a href="xemdiem.php?db_id={db_id}&hsname={top_first_sbd}&search_method=sbd">{top_first_hsname}<!-- - SBD: {top_first_sbd}--></a>			</td>
			<td>{top_first_class}</td>
			<td>				<span class="high_point">{top_first_hspoint}<!-- - STT: {top_first_rank}--></span>			</td>
		</tr>
		<!-- END: top_first -->
	</table>	<div class="clear"></div>

	<!-- BEGIN: tabs -->
	<br /><hr />
	<div class="header">Phân tích điểm môn {tabs_subject}</div>
	<br />
	<table class="table center">
		<tr style="font-weight: bold;">
			<td style="width: 90px;">Lớp</td>
			<td>Sĩ số</td>
			<td class="bg_red"><span class="low_point">&lt;5</span></td>
			<td>&#91;5;6.5&#41;</td>
			<td>&#91;6.5;8&#41;</td>
			<td class="bg_green"><span class="medium_point">&#91;8;10&#41;</span></td>
			<td class="bg_green"><span class="high_point">10 tròn</span></td>
			<td class="bg_grey_light">Ðiểm TB</td>
			<td class="bg_grey_light">Phương sai</td>
			<td class="bg_grey_light">Độ lệch chuẩn</td>
		</tr>
		<!-- BEGIN: tabs_point -->
		<tr>
			<td class="left"><a href="{link_tabs_class}"><b>Lớp {tabs_class}</b></a></td>
			<td>{tabs_count_hs}</td>
			<td class="bg_red"><span class="low_point">{tabs_point1}<!--<br />{tabs_percent1}%--></span></td>
			<td>{tabs_point2}<!--<br />{tabs_percent2}%--></td>
			<td>{tabs_point3}<!--<br />{tabs_percent3}%--></td>
			<td class="bg_green"><span class="medium_point">{tabs_point4}<!--<br />{tabs_percent4}%--></span></td>
			<td class="bg_green"><span class="high_point">{tabs_point5}<!--<br />{tabs_percent5}%--></span></td>
			<td class="bg_grey_light">{tabs_pointtb}</td>
			<td class="bg_grey_light">{tabs_phsai}</td>
			<td class="bg_grey_light">{tabs_dlc}</td>
			
		</tr>
		<!-- END: tabs_point -->
	</table>
	<!-- END: tabs -->
	
	<h3 class="center">Điểm trung bình của tất cả học sinh là: <span class="low_point">{avg_point}</span> điểm</h3>
	<br />
<div class="center">
	<button onclick="window.location.reload()">Tải lại trang</button>
	<button onclick="window.location.href='index.php#'">Về trang chủ</button>	<button onclick="share_fb('{fb_link}', '{fb_title}', '{fb_descr}')">Chia sẻ lên Facebook</button>
</div><br /></div>