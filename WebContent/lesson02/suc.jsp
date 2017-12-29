<%@page import="cn.et.model.DbUtils"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	注册成功
	<%
		//从html页面获取用户输入的属性值
		String emailName = request.getParameter("emailName");
		String emailDomain = request.getParameter("emailDomain");
		String mainPassword = request.getParameter("mainPassword");
		String mainConfirmPassword = request.getParameter("mainConfirmPassword");
		String sex = request.getParameter("sex");
		String[] hobbys = request.getParameterValues("hobby"); 
		String bornDate = request.getParameter("bornDate");
		String phoneNumber = request.getParameter("phoneNumber");
		String realm = "0".equals(emailDomain)? "163.com" :("1".equals(emailDomain)? "126.com" : "yeah.net");
		String s = "1".equals(sex) ? "男" : "女";
		
		String hobby = "";
		if(hobbys != null) {
			for(String h : hobbys) {
				if("1".equals(h)) {
					hobby += "打篮球";
				}else if("2".equals(h)) {
					hobby += "看电影";
				}else {
					hobby += "听音乐";	
				}
			}
		}
	
	%>
	<!-- 添加到数据库（mysql） -->
	
	
	您输入的邮件名称是：<%=emailName %><br> 您输入的域名是：<%="0".equals(emailDomain)? "163.com" :("1".equals(emailDomain)? "126.com" : "yeah.net") %><br>
	密码：<%=mainPassword %><br> 确认密码：<%=mainConfirmPassword %><br>
	输入的性别为:<%="1".equals(sex) ? "男" : "女"  %>
	兴趣爱好为：
	
	<%!
		//连接数据库
		Connection conn = null;
		public void init(){
			try{
				conn = DbUtils.getConnection();
			}catch(Exception e) {
				e.getMessage();
			} 
		}
	%>
	
	<%
		//将数据添加到数据库
		String sql = " INSERT INTO `easytop`.`eclass` (`email`, `password`, `sex`, `hobby`, `birthdate`, `tel`) VALUES (?, ?, ?, ?, ?, ?); ";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, emailName+"@"+realm);
		ps.setString(2, mainPassword);
		ps.setString(3, s);
		ps.setString(4, hobby);
		ps.setString(5, bornDate);
		ps.setString(6, phoneNumber);
		ps.execute();
	%>
	<%
	//String name = "' or 1=1 or 1='";
	//String sqsss= "select * from emp name='"+name+"'";
 
	
	
	
	
		if(hobbys != null) {
			for(String h : hobbys) {
				if("1".equals(h)) {
	%>
		打篮球
	<% 				
				}else if("2".equals(h)) {
	%>
		看电影
	<%	
				}else {
	%>
		听音乐
	<%				
				}
			}
		}
	%>
	<br/>
	你的出生日期是：<%=bornDate %><br>
	你输入的电话号码是：<%=phoneNumber %>
</body>
</html>