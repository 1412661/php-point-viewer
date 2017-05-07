function analyze_db(mode) {
	var db_id = $('input[name="db_id"]').val(); 
	if (mode == "statistic") {
	
	window.location.href = "statistic.php?db_id=" + db_id;
	} else {
		if (mode = "class_rank") {
		window.location.href = "class_rank.php?action=view_rank&db_id=" + db_id;
		}
	}
}
function popup(w,h) {
	var left = (screen.width - w) / 2;
	var top = (screen.height - h) / 2;
	newwindow = window.open('contact.php', 'Contac Me', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=670, height=490, top='+top+', left='+left);
}/*function share_fb(link) {	newwindow = window.open(link, '', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=800, height=400');}*/

function share_fb(url, title, descr) {
        window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=http://qbtest.net78.net/template/image/logo.jpg', 'sharer', 'toolbar=0,status=0,width=800,height=400');
}

/*<script>
    function fbShare(url, title, descr, image, winWidth, winHeight) {
        var winTop = (screen.height / 2) - (winHeight / 2);
        var winLeft = (screen.width / 2) - (winWidth / 2);
        window.open('http://www.facebook.com/sharer.php?s=100&p[title]=' + title + '&p[summary]=' + descr + '&p[url]=' + url + '&p[images][0]=' + image, 'sharer', 'top=' + winTop + ',left=' + winLeft + ',toolbar=0,status=0,width=' + winWidth + ',height=' + winHeight);
    }
</script>
<a href="javascript:fbShare('http://jsfiddle.net/stichoza/EYxTJ/', 'Fb Share', 'Facebook share popup', 'http://goo.gl/dS52U', 520, 350)">Share</a>*/$(document).ready(function() {	$(function() {		$("#t1, #t2, #t3").tabs();	});});checked = false;
function checkedAll (frm) {	var frm = document.getElementById(frm);	if (checked == false) {		checked = true	} else {		checked = false	}		for (var i = 0; i < frm.elements.length; i++) {		frm.elements[i].checked = checked;	}}function toggle(id) {   $("#"+id).toggle();}

function input(content) {
	if (content == 'input_sbd') {
		document.getElementsByClassName('input_hs')[0].style.display = "";
		document.getElementsByClassName('input_class')[0].style.display = "none";
	}
	
	if (content == 'input_hs') {
		document.getElementsByClassName('input_hs')[0].style.display = "";
		document.getElementsByClassName('input_class')[0].style.display = "";
	}
	
	if (content == 'input_class') {
		document.getElementsByClassName('input_hs')[0].style.display = "none";
		document.getElementsByClassName('input_class')[0].style.display = "";
	}
}