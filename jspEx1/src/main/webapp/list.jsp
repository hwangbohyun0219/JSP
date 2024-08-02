<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	table, th,tr ,td{
 		border : 1px solid black;
 		border-collapse:collapse;
 		padding:10px;
 }
</style>
</head>
<body>
<%@include file="db.jsp" %>
	<%
		ResultSet rs = null;
		Statement stmt = null;
		
		try{
			stmt = conn.createStatement();
			/* String querytext = "select * from student"; */
			rs = stmt.executeQuery("SELECT * FROM STUDENT");

			out.println("<table>");
			out.println("<tr>");
			out.println("<th>선택</th>");
			out.println("<th>이름</th>");
			out.println("<th>학번</th>");
			out.println("<tr>");
			
			
			
			
			while (rs.next()) {
				out.println(rs.getString("stu_name") + "\t" + rs.getString("stu_no") + "<br>"); 
			}
	
		} catch(SQLException ex) {
			out.println("SQLException : " + ex.getMessage());
		}
	%>
</body>
</html>