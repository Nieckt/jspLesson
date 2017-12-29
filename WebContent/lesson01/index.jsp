<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	hello word
	<%!// i是全局变量
	int i = 0;

	// 成员方法
	public int add(int x, int y) {
		return x + y;
	}%>

	<!-- 导包 -->
	<%@ page import="java.util.Date"%>


	<%
		int sum = add(200, 100);
		Date date = new Date();
		out.println(date);
	%>
	<br />
	<%
		for (int i = 1; i <= 9; i++) {
			for (int j = 1; j <= i; j++) {
				out.print(j + "*" + i + "=" + i * j + "\t");
			}
	%>
	<br />
	<%
		}
	%>
	<br />

	<!-- 局部变量每次刷新都会加1 -->
	<%=++i%>

	<%!int j = 0;

	// 线程锁方法
	synchronized void setCount() {
		j++;
	}%>
	<%
		setCount();
		out.print("您是第" + j + "个访问本站的客户");
	%>
	
	<br/>
	
	<%= 2%>
	
	<br/>
	
	<%
		for (int i = 3; i <= 1000; i++) {
			for (int j = 2; j < i; j++) {

				if (i % j == 0) {
					break;
				} else {
	%>
	<%
		if (j == i - 1) {
						out.print(i);
	%>
		<br/>
	<%
		}
				}
			}
		}
	%>
</body>
</html>