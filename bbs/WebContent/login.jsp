<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>BBS论坛</title>
<link rel="stylesheet" type="text/css" href="css.css" />
<script type="text/javascript" src="js.js"></script>

</head>

<body>
	<form action="user/login.do" method="post">
		<table border="0" cellpadding="0" cellspacing="0" align="center">
		<!-- 上 -->
			<tr>
			<td  background="images/login_04.gif" width="862px" height="266px"></td>
			</tr>
		<!-- 中 -->
			<tr>
				<td>
					<table border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td background="images/login_06.gif" width="424px" height="95px"></td>
						<td background="images/login_07.gif" width="183px" height="95px">
							<table>
								<tr height="30px">
									<td class="word">账号</td>
									<td><input type="text" id="id" name="id" style="width:130px"/>
								</tr>
								<tr height="30px">
									<td class="word">密码</td>
									<td><input type="password" id="password" name="password" style="width:130px"/>
								</tr>
								<tr>
									<td colspan="2" style="text-align:center">
										<input type="submit" id="submit" value="登录" />
										<input type="button" value="注册" onclick="javascript:location.href='register.jsp'">
									</td>
								</tr>
							</table>
						</td>
						<td background="images/login_08.gif" width="255px" height="95px"></td>
					</tr>
					</table>
				
				</td>
			</tr>
		<!-- 下 -->
			<tr>
			<td height="247" width="862px" background="images/login_09.gif"></td>			
			</tr>
		</table>		
	</form>
</body>
</html>