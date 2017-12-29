<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="ex" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ex:add p1="10" p2="40"></ex:add>
	<ex:minus p1="20" p2="5"></ex:minus>
	<!-- 可以放el表达式 -->
	<ex:if test="${1==1 }">
		<!-- 输出内容 -->
		hello
	</ex:if>
	<%
		List list = new ArrayList();
		list.add("林青霞");
		list.add("王祖贤");
		//设置进去
		pageContext.setAttribute("list", list);
	%>
	<ex:for var="i" begin="1" end="11" step="1">
		${requestScope.i}
	</ex:for>
	<ex:forEach var="mystr" items="${fn:split('1,2,3',',')}">
		${requestScope.mystr}
	</ex:forEach>
</body>
</html>