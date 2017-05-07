<!-- BEGIN: main -->{FILE "template/header.tpl"}
<body>
<!-- BEGIN: dialog -->{FILE "template/dialog.tpl"}<!-- END: dialog -->
<!-- BEGIN: db_id_selector -->{FILE "template/db_id_selector.tpl"}<!-- END: db_id_selector -->
{FILE "template/banner.tpl"}
<div class="wrapper">
	<div id="left">
		<!-- BEGIN: index_page -->
		{FILE "template/index_page.tpl"}
		<!-- END: index_page -->
		<!-- BEGIN: view_statistic -->
		{FILE "template/statistic.tpl"}
		<!-- END: view_statistic -->
		<!-- BEGIN: class_rank -->
		{FILE "template/class_rank.tpl"}
		<!-- END: class_rank -->
	</div>
	<div id="right">
		{FILE "template/r_panel.tpl"}
	</div>
	
	<div class="clear"></div>
</div>
{FILE "template/footer.tpl"}
</body>
</html><!-- END: main -->