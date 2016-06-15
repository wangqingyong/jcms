package com.joshuait.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/jcms";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "";
	
	public static Connection conne(){
		Connection conn = null;
		try {
			// 加载驱动
			Class.forName(JDBC_DRIVER);
			// 创建数据库连接
			conn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
