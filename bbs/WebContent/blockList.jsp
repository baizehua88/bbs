<%@page import="com.bai.model.User,javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>首页</title>
<link rel="stylesheet" href="css/stylemain.css" type="text/css" media="all" />
<script type="text/javascript">

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
					欢迎 <a href="user/getUserById.do?id=${user.id}"><strong>${user.name}</strong></a> <span>|</span> <a href="login.jsp">退出</a>
				</div>
			</div>


			<!-- 导航 -->
			<div id="navigation">
				<ul>

					<li><a href="user/userList.do" ><span>用户管理</span></a></li>

					<li><a href="block/blockList.do" class="active"><span>论坛</span></a></li>
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
				<a href="block/blockList.do">所有版块</a>
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
							<h2 class="left">版块列表</h2>
							<div class="right">
								<label>搜索版块</label> 
								<input type="text" class="field small-field" id="searchVal" /> 
								<input type="submit" class="button" value="search" onclick="search()" />
							</div>
						</div>
						<!-- End Box Head -->

						<!-- Table -->
						<div class="table">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<th>版块名</th>
									<th>版块信息</th>
									<th>帖子数</th>
									<th>版主名</th>
									<th>创建时间</th>
								</tr>
								<c:forEach var="block" items="${blockList}"  >
								<tr>
									<td><a href="block/articleList.do?bid=${block.bid}&bname=${block.bname}">${block.bname}</a></td>
									<td>${block.bdesc}</td>
									<td>${block.bnum}</td>
									<td>${block.uid}</td>
									<td>${block.btime}</td>					
								</tr>
								</c:forEach>
							
							</table>

						</div>
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
			<span class="left">&copy; 2018</span> <span class="right"> 版本 2018V1.0 </span>
		</div>
	</div>
</body>
</html>