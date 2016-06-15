package com.joshuait.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.joshuait.entity.DBHelper;
import com.joshuait.entity.User;

public class UserDao {
	
	public static void main(String[] args) throws SQLException {
		UserDao helloDao = new UserDao();
		helloDao.getByid(1l);
		List<User> a = helloDao.select();
		for (int i = 0; i < a.size(); i++) {
			User value = a.get(i);
			System.out.println(value);
		}
		helloDao.deleteByid(17l);
	}

	public List<User> select() throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		List<User> userList = new ArrayList<User>();
		Connection conn = DBHelper.conne();
		try {
			// 创建Statement对象（Statement对象代表SQL语句的集合）
			stmt = conn.createStatement();
			// 执行sql语句，获取执行结果
			rs = stmt.executeQuery("select * from wp_users");
			// 读取结果集
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getLong("id"));
				user.setUserActivationKey(rs.getString("user_activation_key"));
				user.setDisplayName(rs.getString("display_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserRegistered(rs.getDate("user_registered"));
				user.setUserNicename(rs.getString("user_nicename"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
				user.setUserLogin(rs.getString("user_login"));
				
				userList.add(user);
			}
		}finally {
			// 关闭连接
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
		return userList;
	}

	public void zengjia(User user) throws SQLException {
		Statement stmt = null;
		Connection conn = DBHelper.conne();
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("INSERT INTO `wp_users` (`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_registered`,`user_activation_key`,`user_status`,`display_name`)"
					+ "VALUES ('"+user.getUserLogin()+"', "
					+ "'"+user.getUserPass()+"',"
					+ " '"+user.getUserNicename()+"', "
					+ "'"+user.getUserEmail()+"', "
					+ "'"+user.getUserRegistered()+"',"
					+ " '"+user.getUserActivationKey()+"', "
					+ ""+user.getUserStatus()+","
					+ " '"+user.getDisplayName()+"');");
		} finally {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
	}

	public void deleteByid(long id) throws SQLException{
		Statement stmt = null;
		Connection conn = DBHelper.conne();
		try {
			stmt = conn.createStatement();
			stmt.executeUpdate("DELETE FROM wp_users WHERE id =" + id);
		}finally {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
	}
	
	public void update(User user) throws SQLException{
		Statement stmt = null;
		Connection conn = DBHelper.conne();
		try {
			stmt = conn.createStatement();
			StringBuffer sql = new StringBuffer("update `wp_users` set ");
			if(user.getUserLogin()!=null){
				sql.append("`user_login`='"+user.getUserLogin()+"',");
			}
			if(user.getUserPass()!=null){
				sql.append("`user_pass`='"+user.getUserPass()+"',");
			}
			if(sql.lastIndexOf(",")>0){
				sql = new StringBuffer(sql.substring(0, sql.lastIndexOf(",")));
			}
			
			sql.append(" where id = "+user.getId());
			
			System.out.println(sql);
			
			// 4.执行sql语句，获取执行结果
			stmt.executeUpdate(sql.toString());
		}finally {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
	}
	
	public User getByid(long id) throws SQLException{
		User user = new User();
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = DBHelper.conne();
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from wp_users where id ="+id);
			while (rs.next()) {
				// Long id = rs.getLong(1);
				user.setId(rs.getLong("id"));
				user.setUserActivationKey(rs.getString("user_activation_key"));
				user.setDisplayName(rs.getString("display_name"));
				user.setUserEmail(rs.getString("user_email"));
				user.setUserRegistered(rs.getDate("user_registered"));
				user.setUserNicename(rs.getString("user_nicename"));
				user.setUserPass(rs.getString("user_pass"));
				user.setUserStatus(rs.getInt("user_status"));
				user.setUserLogin(rs.getString("user_login"));
			}
		}finally {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}
		return user;
	}

}
