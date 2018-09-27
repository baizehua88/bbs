<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>首页</title>
<link rel="stylesheet" href="css/stylemain.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.x.js"></script>
<script type="text/javascript">
function ajaxFunction() {
	$.post("user/ajaxLogin.do", {
		name : "error"
	}, function(data) {
		alert(data);
	},"text");

}
</script>
</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="shell">

			<!-- 顶部 -->
			<div id="top">
				<h1>BBS论坛</h1>
				<div id="top-navigation">
					欢迎 <a href="#"><strong>${user.name}</strong></a> <span>|</span> <a href="login.jsp">退出</a>
				</div>
			</div>


			<!-- 导航 -->
			<div id="navigation">
				<ul>

					<li><a href="userList.jsp" class="active"><span>用户管理</span></a></li>

					<li><a href="#"><span>论坛</span></a></li>
					<li><a href="#"><span>帮助</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Header -->

	<!-- Container -->
	<div id="container">
		<div class="shell">

			<!-- Small Nav -->
			<div class="small-nav">
				<a href="#">用户管理</a> &gt; 用户资料修改
			</div>
			<!-- End Small Nav -->

			<br />
			<!-- Main -->
			<div id="main">
				<div class="cl">&nbsp;</div>

				<!-- Content -->
				<div id="content">

					<!-- Box -->
					<div class="box">
						<!-- Box Head -->
						<div class="box-head">
							<h2 class="left">用户修改</h2>

						</div>
						<!-- End Box Head -->

						<!-- Table -->
						<p>
							<font color="#FFFFFF">用户修改</font>
						</p>
						<center>
						<form id="form1" name="form1" method="post" action="user/editUser.do?id=${user.id }" onsubmit="return check()" >
							<table>
							
								<tr>
									<td><font color="#AD462D">用户账号：</font></td>
									<td><font color="#AD462D">${user.id }</font></td>
								</tr>
								<tr>
									<td><font color="#AD462D">用户名：</font></td>
									<td><input type="text" name="name" id="name" value="${user.name}"/></td>
								</tr>
								<tr>
									<td><font color="#AD462D">旧密码：</font></td>
									<td><input type="password" name="password" id="password" /></td>
								</tr>
								<tr>
									<td><font color="#AD462D">新密码：</font></td>
									<td><input type="password" name="newpassword" id="pwd" /></td>
								</tr>
								<tr>
									<td><font color="#AD462D">确认密码：</font></td>
									<td><input type="password" name="confirmpassword" id="pwd1" /></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
									<input type="submit" value="提交"  /> 
									<input type="reset" value="重置" />
									</td>
								</tr>
							</table>
						</form>
						</center>
						<!-- Table -->
					</div>
					<!-- End Box -->
				</div>
				<!-- End Content -->


				<div class="cl">&nbsp;</div>
			</div>
			<!-- Main -->
		</div>
	</div>
	<!-- End Container -->

	<!-- Footer -->
	<div id="footer">
		<div class="shell">
			<span class="left">&copy; 2014</span> <span class="right"> 版本 2014V1.0 </span>
		</div>
	</div>
</body>
</html>