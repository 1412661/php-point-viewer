<!-- BEGIN: main -->{FILE "template/mobile/header.tpl"}
<body>
{FILE "template/mobile/banner.tpl"}

<div id="users">

<div class="wrapper">
		<div class="header">Quản lí tài khoản</div>
		<br />
		
		<!-- BEGIN: user_error -->
		<div class="users_error">
			<div class="error_mess left">
				<img src="template/image/error_mess.png" alt="error_mess"/>&nbsp;{mess}
			</div>
		</div>
		<br />
		<!-- END: user_error -->
		
		<!-- BEGIN: user_success -->
		<div class="users_success">
			<div class="success_mess left">
				<img src="template/image/success_mess.png" alt="success_mess"/>&nbsp;{mess}
			</div>
		</div>
		<br />
		<!-- END: user_success -->
		
		<table class="table" style="float: left; width: 310px;">
			<tr>
				<td><b>Tài khoản hiện tại:</b></td>
				<td><b>{username}</b></td>
			</tr>
			<tr>
				<td><b>Đổi mật khẩu:</b></td>
				<td>
					<form action="users.php" method="post">
						<label for="old_pass">Mật khẩu cũ:</label><br />
						<div class="right"><input type="password" name="old_pass" id="old_pass" value="{old_pass}"/></div><br />
			
						
						<label for="new_pass">Mật khẩu mới:</label><br />
						<div class="right"><input type="password" name="new_pass" id="new_pass" value="{new_pass}"/></div><br />
						
						
						<label for="re_new_pass">Nhập lại mật khẩu mới:</label><br />
						<div class="right"><input type="password" name="re_new_pass" id="re_new_pass" value="{re_new_pass}"/></div><br />
					
						<input type="hidden" name="change_pass" value="1" />
					
						<div class="center">
							<input type="submit" value="Gửi" />
							<input type="reset" value="Nhập lại" />
						</div>
						<br />
					</form>
				</td>
			</tr>
		</table>
			
		
		<div class="add_user" style="float: right; width: 200px;">
			<form action="users.php" method="post">
			<b>Thêm mới tài khoản:</b>
			<br /><br />
			<label for="new_user">Tên tài khoản</label>: <input type="text" name="new_user" value="{new_user}" id="new_user" style="width: 160px;"/><br />
			
			<div class="center"><i>(Mật khẩu mặc định: 123456)</i></div>
			
			<input type="hidden" name="add_user" value="1" />
			<br />
			<div class="center">
				<input type="submit" value="Gửi" />
				<input type="reset" value="Nhập lại" />
			</div>
			</form>
		</div>
		
		<div class="clear"></div>
		
		<br />
		<div class="center">
			<button onclick="window.location.href='index.php#'">Về trang chủ</button>
			<button onclick="window.location.href='login.php'">Về trang quản lí</button>
		</div>
		
		<br /><hr /><br />
	
		<table class="table center" style="width: 100%;">
			<tr>
				<td colspan="4"><h3>Danh sách tài khoản</h3></td>
			</tr>
			<tr style="font0-weight: bold;">
				<td style="width: 40px;">ID</td>
				<td><b>Tên tài khoản:</td>
				<td style="width: 140px;">Lần cập nhật cuối:</td>
				<td>Thêm bởi:</td>
			</tr>
			<!-- BEGIN: account -->
			<tr>
				<td>{account_id}</td>
				<td class="left">{account_name}</td>
				<td>{last_update}</td>
				<td class="left"><b>{add_by}</b></td>
			</tr>
			<!-- END: account -->
		</table>
		<br />
</div>

</div>

{FILE "template/mobile/footer.tpl"}
</body>
</html>
<!-- END: main -->