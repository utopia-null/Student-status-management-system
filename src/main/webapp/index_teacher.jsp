<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学籍数据管理</title>
</head>
<style>
body {
	background-image: url('image/wallhaven2.png');
	background-repeat: no-repeat;
	background-size: cover;
}

.all {
	text-align: center;
	border-radius: 25px;
	background-color: #f2f2f2;
	padding: 20px;
	width: 500px;
	height: 200px;
	margin-top: 10%;
	margin-left: 35%;
	opacity: 0.7;
}

a {
	text-decoration: none;
	border: solid 1px;
	padding: 0.4em 0.8em;
	color: #444;
	background: #2bc2a1;
	border-color: #fff #aaa #aaa #fff;
	border-radius: 25px;
}
</style>
<body>
	<div class="all">

		<div align="center" class="flash">
			<h1>学籍管理系统</h1>
			<!-- 查看学籍信息 -->
			<a href="FindServlet">查看学籍信息</a>


			<!-- 添加学籍信息 -->
			<a href="add_xunji.jsp">添加学籍信息</a> <br> <br> <br>

			<!-- 删除学籍信息 -->
			<a href="FindServlet1">删除学籍信息</a>


			<!-- 修改学籍信息 -->
			<a href="FindServlet2">修改学籍信息</a>
		</div>
	</div>
</body>
</html>