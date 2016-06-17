<%@page import="com.joshuait.entity.Users"%>
<%@page import="java.util.List"%>
<%@page import="com.joshuait.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
</head>
<body>
	<div>
		<a href="user-add.jsp">新增用户</a>
	</div>

	<div style="color: green">
		<%
			String msg = (String) request.getAttribute("msg");
		%>
		<%=msg%>
	</div>
	<table>
		<tr>
			<td>#</td>
			<td>登录名称</td>
			<td>昵称</td>
			<td>邮箱</td>
		</tr>
		<%
			UsersDao usersdao = new UsersDao();
			
			List<Users> usersList = usersdao.Search(new Users());
			System.out.println();
			for (Users u : usersList) {
		%>
		<tr>
			<td><%=u.getId()%></td>
			<td><%=u.getUserLogin()%></td>
			<td><%=u.getUserEmail()%></td>
			<td></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>