package com.lyq.bean;
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.valves.rewrite.Substitution.StaticElement;

public class FindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//加载数据库驱动，注册驱动管理器
			//Class.forName("com.mysql.cj.jdbc.Driver");
			
			//数据库连接字符串
			//String url = "jdbc:mysql://localhost:3306/student_status?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
			//数据库账号
			String username = "root";
			//数据库密码
			String password = "1221";
			//加载数据库驱动，注册驱动管理器
			String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
		    String DB_URL = "jdbc:mysql://localhost:3306/student_status?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
		    // 注册 JDBC 驱动
            Class.forName(JDBC_DRIVER);

			//创建Connection连接
            System.out.println("连接数据库...");
			Connection conn = DriverManager.getConnection(DB_URL,username,password);
			// 获取statement对象
			Statement stmt = conn.createStatement();
			//添加学籍信息的SQL语句
			String sql = "select id,xuehao,name1,sex,age,banji_id,ruxueshijian,biyeshijian,xuezhi,xuexiao,del from t_stu";
			//执行查询
			ResultSet rs = stmt.executeQuery(sql);
			//实例化list对象
			List<XueJi> list = new ArrayList<XueJi>();
			//光标后移判断是否有效
			while(rs.next()){
				//光标后移，判断是否有效
				XueJi xueji = new XueJi();
				//对id赋值ֵ
				xueji.setId(rs.getInt("id"));
				//对xuehao赋值			
				xueji.setXuehao(rs.getInt("xuehao"));
				//对name1赋值
				xueji.setName1(rs.getString("name1"));
				//对sex赋值
				xueji.setSex(rs.getString("sex"));
				//age
				xueji.setAge(rs.getInt("age"));
				//对banji_id赋值
				xueji.setBanji_id(rs.getString("banji_id"));
				//对ruxueshijian赋值
				xueji.setRuxueshijian(rs.getString("ruxueshijian"));
				//对biyeshijian赋值
				xueji.setBiyeshijian(rs.getString("biyeshijian"));			
				//对xuezhi赋值
				xueji.setXuezhi(rs.getString("xuezhi"));
				//对xuexiao赋值
				xueji.setXuexiao(rs.getString("xuexiao"));
				//对del赋值
				xueji.setDel(rs.getString("del"));
				//对id赋值
				list.add(xueji);
			}
			
			request.setAttribute("list", list);
			rs.close();		
			stmt.close();	
			conn.close();	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 
		request.getRequestDispatcher("status_list.jsp").forward(request, response);
	}
}
