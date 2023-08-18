<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.lyq.bean.XueJi"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有学籍信息</title>
<style type="text/css">
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>
<script type="text/javascript">
	function check(form){
		with(form){
			if(bookCount.value == ""){
				alert("请输入！");
				return false;
			}
			if(isNaN(bookCount.value)){
				alert("格式错误！");
				return false;
			}
			return true;;
		}
	}
</script>
</head>
<body>
	<table align="center" width="800" border="1" height="170" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
		<tr bgcolor="white">
			<td align="center" colspan="11">
				<h2>所有学籍信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="#e1ffc1" >
			<td><b>ID</b></td>
			<td><b>学号</b></td>
			<td><b>名字</b></td>
			<td><b>性别</b></td>
			<td><b>年龄</b></td>
			<td><b>班级</b></td>
			<td><b>入学时间</b></td>
			<td><b>毕业时间</b></td>
			<td><b>学制</b></td>
			<td><b>学校</b></td>
			<td><b>删除</b></td>
		</tr>
			<%
				// 获取学籍信息集合
					List<XueJi> list = (List<XueJi>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历集合中的数据
						for(XueJi xueji : list){
			%>
				<tr align="center" bgcolor="white">
					<td><%=xueji.getId()%></td>
					<td><%=xueji.getXuehao() %></td>
					<td><%=xueji.getName1() %></td>
					<td><%=xueji.getSex() %></td>
					<td><%=xueji.getAge() %></td>
					<td><%=xueji.getBanji_id() %></td>
					<td><%=xueji.getRuxueshijian() %></td>
					<td><%=xueji.getBiyeshijian() %></td>
					<td><%=xueji.getXuezhi() %></td>
					<td><%=xueji.getXuexiao() %></td>
					<td>
						<a href="DeleteServlet?id=<%=xueji.getId()%>">删除</a>
					</td>
				</tr>
			<%
					}
				}
			%>
	</table>
</body>
</html>