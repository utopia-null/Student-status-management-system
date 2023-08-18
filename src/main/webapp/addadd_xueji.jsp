<%@page import="com.lyq.bean.XueJi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加结果</title>
</head>
<body>
	<!-- 乱码 -->
	<%request.setCharacterEncoding("utf-8");%>
	<jsp:useBean id="xueji" class="com.lyq.bean.XueJi"></jsp:useBean>
	<jsp:setProperty property="*" name="xueji"/>
	<%
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/student_status";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "1221";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 添加信息的SQL语句
			String sql = "insert into t_stu(xuehao,name1,sex,age,banji_id,ruxueshijian,biyeshijian,xuezhi,xuexiao) values(?,?,?,?,?,?,?,?,?)";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第1个参数赋值
			ps.setInt(1, xueji.getXuehao());
			System.out.println("name："+xueji.getXuehao());
			// 对SQL语句中的第2个参数赋值
			ps.setString(2, xueji.getName1());
			// 对SQL语句中的第3个参数赋值
			ps.setString(3, xueji.getSex());
			// 对SQL语句中的第4个参数赋值
			ps.setInt(4, xueji.getAge());
			// 对SQL语句中的第5个参数赋值
			ps.setString(5, xueji.getBanji_id());
			// 对SQL语句中的第6个参数赋值
			ps.setString(6, xueji.getRuxueshijian());
			// 对SQL语句中的第7个参数赋值
			ps.setString(7,xueji.getBiyeshijian() );
		
			// 对SQL语句中的第8个参数赋值
			ps.setString(8, xueji.getXuezhi());
			// 对SQL语句中的第9个参数赋值
			ps.setString(9, xueji.getXuexiao());
			// 执行更新操作，返回所影响的行数
			int row = ps.executeUpdate();
			// 判断是否更新成功
			if(row > 0){
				// 更新成输出信息
				out.print("成功添加了 " + row + "条数据！");
			}
			// 关闭PreparedStatement，释放资源
			ps.close();
			// 关闭Connection，释放资源
			conn.close();
		} catch (Exception e) {
			out.print("信息添加失败！");
			e.printStackTrace();
		}
	%>
	<br>
	<a href="add_xueji.jsp">返回</a>
</body>
</html>