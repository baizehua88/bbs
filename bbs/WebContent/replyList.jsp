<%@page import="com.bai.model.Article"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.bai.model.Block"%>
<%@page import="com.bai.model.Reply"%>
<%@page import="com.bai.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=request.getContextPath() %>/">
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<title>首页</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />

</head>
<body>
	<!-- Header -->
	<div id="header">
		<div class="shell">
			<!-- Logo + Top Nav -->
			<div id="top">
				<h1>BBS论坛</h1>
				<div id="top-navigation">
					欢迎 <a href="user/getUserById.do?id=${user.id}"><strong>${user.name}</strong></a> 
					<span>|</span> 
					<a href="login.jsp">退出</a>
				</div>
			</div>
			<!-- End Logo + Top Nav -->

			<!-- Main Nav -->
			<div id="navigation">
				<ul>
			    
			   		<li><a href="user/userList.do"><span>用户管理</span></a></li>		   	
				   	<li><a href="block/blockList.do" class="active"><span>论坛</span></a></li>
				    <li><a href="#"><span>帮助</span></a></li>
				</ul>
			</div>
			<!-- End Main Nav -->
		</div>
	</div>
	<!-- End Header -->

	<!-- Container -->
	<div id="container">
		<div class="shell">

			<!-- Small Nav -->
			<div class="small-nav">
			<%
				Block block = (Block)session.getAttribute("block");
				Article article = (Article)session.getAttribute("article");	
				
				System.out.print(article);
			%>
				<a href="block/blockList.do">所有版块</a> 
				&gt;<a href="block/articleList.do?bid=${block.bid}&bname=${block.bname}">${block.bname}</a>
				&gt;<a href="block/replyList.do?aid=${article.aid}&aname=${article.aname}">${article.aname}</a>
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
							<h2 class="left">回帖显示</h2>
							<div class="right">
								<label>搜索回帖</label> <input type="text" class="field small-field" />
								<input type="submit" class="button" value="search" />
							</div>
						</div>
						<!-- End Box Head -->

						<!-- Table -->
						<div class="table">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<c:forEach var="reply" items="${replyList}" >
								<tr>								
									<td>									
										<table width="100%">
											<tr>
												<th >
													<span style="float: left;">楼主：${reply.uid}</span>
													<span style="float: right;">发帖时间：${reply.rtime}</span>
												</th>
												
											</tr>
											<tr>
												<td colspan="2">${reply.rdesc}</td>
											</tr>
										</table>									
									</td>								
								<tr>
								</c:forEach>																										
							</table>

						</div>
						<!-- Table -->

					</div>
					<!-- End Box -->

					<!-- Box -->
					<div class="box">
						<!-- Box Head -->
						<div class="box-head">
							<h2>回复</h2>
						</div>
						<!-- End Box Head -->

						<form
							action="block/reply.do?aid=${article.aid}&uid=${user.id}" name="aform"
							method="post">

							<!-- Form -->
							<div class="form">
								<p>
									<span class="req">最多输入1000个字符</span>
									<textarea class="field size1" name="rdesc" id="rcontents" rows="10"
										cols="30"></textarea>
								</p>

							</div>
							<!-- End Form -->

							<!-- Form Buttons -->
							<div class="buttons">
								<input type="hidden" name="tid" value="" />
								<input type="submit"  class="button" value="提交" /> <input
									type="reset" class="button" value="重置" />
							</div>
							<!-- End Form Buttons -->
						</form>
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
			<span class="left">&copy; 2018</span> <span class="right"> 版本
				2018V1.0 </span>
		</div>
	</div>
</body>
</html>