package com.lyq.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteServlet
 */
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取学籍id
		int id = Integer.valueOf(request.getParameter("id"));
		try {
			//加载数据库驱动
			Class.forName("com.mysql.jdbc.Driver");
			// 连接数据库字符串
			String url = "jdbc:mysql://localhost:3306/student_status";
			//数据库账号
			String username = "root";
			//数据库密码
			String password = "1221";
			//创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 删除信息的SQL语句
			String sql = "delete from t_stu where id=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句第一个占位符赋值ֵ
			ps.setInt(1, id);
			// 执行更新操作
			ps.executeUpdate();
			// 关闭preparedstatement连接
			ps.close();
			// 关闭Connections连接
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		//重定向到FindServlet
		response.sendRedirect("FindServlet1");
	}
}
