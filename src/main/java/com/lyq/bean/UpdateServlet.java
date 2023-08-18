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
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int banji_id = Integer.valueOf(request.getParameter("banji_id")); 
		try {
			// 
			Class.forName("com.mysql.jdbc.Driver");
			// 
			String url = "jdbc:mysql://localhost:3306/student_status";
			//
			String username = "root";
			//
			String password = "1221";
			// 
			Connection conn = DriverManager.getConnection(url,username,password);
			// 
			String sql = "update t_stu set banji_id=? where id=?";
			// 
			
			PreparedStatement ps =conn.prepareStatement(sql);
			// ֵ
			
			ps.setInt(1, banji_id);
			//ֵ
			ps.setInt(2, id);
			// 
			ps.executeUpdate();
			// 
			ps.close();
			// 
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// 
		response.sendRedirect("FindServlet2");
	}

}
