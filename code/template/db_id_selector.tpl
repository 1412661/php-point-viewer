<div style="display: none; overflow-y: scroll;">
	<div id="db_id_selector" title="Chọn ID cơ sở dữ liệu">
		
		<div class="hr"></div>
			<div style="width: 340px; margin: auto;">
				<!-- BEGIN: year -->
					<b>Năm học: <u>{year}</u></b><br />
					<!-- BEGIN: db_list -->
					<span title="{db_info}">
						<button onclick="select_db({db_id},{kclass})">[{db_id}]</button>
					</span>
					<!-- END: db_list -->
					<br /><br />
				<!-- END: year -->
				
				
				<!-- BEGIN: db_empty -->
				<div class="require center">(Cơ sở dữ liệu chưa được cập nhật)</div>
				<!-- END: db_empty -->
				
			</div>
		<div class="hr"></div>
	</div>
</div>