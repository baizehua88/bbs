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

	function validateForm(){
		var x=document.forms["form"]["id"].value;
		var y=document.forms["form"]["password"].value;
		var y1=document.forms["form"]["confirmpassword"].value;
		var z=document.forms["form"]["name"].value;
		if (x==null || x==""){
		  alert("账号不能为空！");
		  return false;
		  }
		if (z==null || z==""){
			  alert("用户名不能为空！");
			  return false;
		}
		if (y==null || y==""){
			  alert("密码不能为空！");
			  return false;
			
		}
		if (!y.equals(y1)){
			  alert("两次密码不一致！");
			  return false;
		}
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
					 <a href="login.jsp"><strong>已有账号，返回登录</strong></a>
				</div>				
			</div>
			<div align="center" style=""><span style="font-size: 30px;color: white;">用户注册</span></div>
		</div>
	</div>
	<!-- End Header -->

	<!-- Container -->
	<div id="container">
		<div class="shell">

			<br />
			<!-- Main -->
			<div id="main">
				<div class="cl">&nbsp;</div>

				<!-- Content -->
				<div id="content" align="center" style="margin-top: 30px;">
					<form id="form1" name="form" method="post" action="user/addUser.do" onsubmit="return validateForm()" >
							<table style="font-size: 20px ;width: 300px;height: 300px;"  >							
								<tr>
									<td><font color="#AD462D">用户账号：</font></td>
									<td><input type="text" name="id" style="height: 25px"/></td>
								</tr>
								<tr>
									<td><font color="#AD462D">用户名：</font></td>
									<td><input type="text" name="name"style="height: 25px"/></td>
								</tr>
								<tr>
									<td><font color="#AD462D">密码：</font></td>
									<td><input type="password" name="password" id="password" style="height: 25px"/></td>
								</tr>
								<tr>
									<td><font color="#AD462D">确认密码：</font></td>
									<td><input type="password" name="confirmpassword" id="pwd1" style="height: 25px" /></td>
								</tr>
								<tr>
									<td colspan="2" align="center" >
									<input type="submit" value="注册" style="height: 35px;width: 80px;font-size: 20px;" /> 
									<input type="reset"  value="重置" style="height: 35px;width: 80px;font-size: 20px;"/>
									</td>
								</tr>
							</table>
					</form>
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