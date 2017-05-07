<!-- BEGIN: main -->{FILE "template/header.tpl"}
<body>
{FILE "template/banner.tpl"}

<div id="users">

<div class="wrapper">
	<div style="float: left; width: 510px;">
		<div class="header"><a href="users.php#">Quản lí tài khoản</a></div>

		<table class="table">
			<tr>
				<td style="width: 150px;"><b>Tài khoản hiện tại:</b></td>
				<td style="width: 320px;"><b>{username}</b></td>
			</tr>
			<tr>
				<td><b>Đổi mật khẩu:</b></td>
				<td>
					<form action="users.php" method="post">
						<label for="old_pass">Mật khẩu cũ:</label>
						<div class="clear"></div>
						<input type="password" name="old_pass" id="old_pass" style="float: right;" value="{old_pass}"/>
						<div class="clear"></div>
						
						<label for="new_pass">Mật khẩu mới:</label>
						<div class="clear"></div>
						<input type="password" name="new_pass" id="new_pass" style="float: right;" value="{new_pass}"/>
						<div class="clear"></div>
						
						<label for="re_new_pass">Nhập lại mật khẩu mới:</label>
						<div class="clear"></div>
						<input type="password" name="re_new_pass" id="re_new_pass" style="float: right;" value="{re_new_pass}"/>
						<div class="clear"></div>
						
						<input type="hidden" name="change_pass" value="1" />
						
						<div class="button_group">
							<input type="submit" value="Gửi" class="button"/>
							<input type="reset" value="Nhập lại" class="button"/>
						</div>
					</form>
				</td>
			</tr>
		</table>
			
		<form action="users.php" method="post">
			<div class="add_user">
				<h3>Thêm mới tài khoản:</h3>

				<label for="new_user">Tên tài khoản</label>: <input type="text" name="new_user" value="{new_user}" id="new_user"/><br />
				
				<div class="default_pass">(Mật khẩu mặc định là 123456)</div>
				
				<input type="hidden" name="add_user" value="1" />

				<div class="button_group">
					<input type="submit" value="Gửi" class="button"/>
					<input type="reset" value="Nhập lại" class="button"/>
				</div>
			</div>
		</form>
		<div class="button_group">
			<a class="button" href="index.php">Về trang chủ</a>
			<a class="button" href="login.php">Về trang quản lí</a>
		</div>
	</div>
	
	<div style="float: right; width: 430px; margin: auto;">
		<!-- BEGIN: user_error -->
		<div class="users_error">
			<div class="error_mess left">
				<img src="template/image/error_mess.png" alt="error_mess"/>&nbsp;{mess}
			</div>
		</div>
		<!-- END: user_error -->
		
		<!-- BEGIN: user_success -->
		<div class="users_success">
			<div class="success_mess left">
				<img src="template/image/success_mess.png" alt="success_mess"/>&nbsp;{mess}
			</div>
		</div>
		<!-- END: user_success -->

		<table class="table ls_account">
			<tr>
				<td colspan="4"><h3>Danh sách tài khoản</h3></td>
			</tr>
			<tr>
				<td><b>ID</b></td>
				<td style="width: 150px;"><b>Tên tài khoản:</b></td>
				<td><b>Lần cập nhật cuối:</b></td>
				<td><b>Thêm bởi:</b></td>
			</tr>
			<!-- BEGIN: account -->
			<tr>
				<td>{account_id}</td>
				<td class="left">{account_name}</td>
				<td>{last_update}</td>
				<td><b>{add_by}</b></td>
			</tr>
			<!-- END: account -->
		</table>
	</div>
	<div class="clear"></div>
</div>

</div>

{FILE "template/footer.tpl"}
</body>
</html>
<!-- END: main -->