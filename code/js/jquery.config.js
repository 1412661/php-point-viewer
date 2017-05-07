$(document).ready(function() {
	$("#r1, #r2, #r3, #r4, #r5, #r6, #r7, #r8, #r9, #r10, #r11, #r12, #r13, #r14, #r15, #r16, #r17, .button, button").button();
	$("#select_c10, #select_c11, #select_c12, #menu_class, #menu_year").selectmenu({
		style:'dropdown'
	});
	$("#tabs, #manage_db, #tab").tabs();
	$(".tablesorter").tablesorter();
	$("#multiselect").multiselect({
		height: 250,
		minWidth: 330,
		noneSelectedText: 'Xin hãy chọn ít nhất một table',
		selectedText: 'Bạn đã chọn #/# table',
		checkAllText: 'Chọn tất cả',
		uncheckAllText: 'Bỏ chọn tất cả',
	})
	.multiselectfilter({
		label: 'Lọc table:',
		placeholder: 'Điền từ khóa ...'
	});
});
function dialog(id) {
	$(id).dialog({
		modal: true,
	});
}


function show_class(kclass) {
	if (kclass == 10) {
		$('#class10').css('display', '');
		$('#class11').css('display', 'none');
		$('#class12').css('display', 'none');
		
		$('#select_c10').removeAttr('disable');
		$('#select_c11').attr('disabled', 'disabled');
		$('#select_c12').attr('disabled', 'disabled');
	}
	
	if (kclass == 11) {
		$('#class10').css('display', 'none');
		$('#class11').css('display', '');
		$('#class12').css('display', 'none');
		
		$('#select_c10').attr('disabled', 'disabled');
		$('#select_c11').removeAttr('disabled');
		$('#select_c12').attr('disabled', 'disabled');
	}
	
	if (kclass == 12) {
		$('#class10').css('display', 'none');
		$('#class11').css('display', 'none');
		$('#class12').css('display', '');
		
		$('#select_c10').attr('disabled', 'disabled');
		$('#select_c11').attr('disabled', 'disabled');
		$('#select_c12').removeAttr('disabled');
	}
}

function select_db(id,kclass) {
	$('#db_id').val(id);
	$('#db_id_selector').dialog('close');
	
	show_class(kclass);
}
