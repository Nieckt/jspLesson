<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
四大作用域对象 (jsp pageContext request sesson application 两个方法setAtrribute和getAtrribute)
	pageContext.setAttribute("my",new MyCard())
-->
<!-- 用动作创建对象 四个对应的内置对象pageScope requestScope sessonScope application-->
<jsp:useBean id="my" class="cn.et.MyCard" scope="page"></jsp:useBean>
<jsp:setProperty property="id" name="my" value="1"/>
<jsp:setProperty property="name" name="my" value="lisi"/>
<!-- el表达式也拥有pageScope requestScope sessonScope applicationScope -->
${pageScope.my.id } --- ${pageScope.my.name} <br>

<!-- 四个内置对象表示不同的作用域(效果是一样的) -->
<jsp:useBean id="my1" class="cn.et.MyCard" scope="request"></jsp:useBean>
<jsp:setProperty property="id" name="my1" value="123"/>
<jsp:setProperty property="name" name="my1" value="zhangsan"/>
<!-- el表达式也拥有pageScope requestScope sessonScope applicationScope -->
${requestScope.my1.id } --- ${requestScope.my1.name}
<br>

<%
//jsp内置对象 pageContest request session application
//usebean的scope page request session application
//el表达式内置对象 pageScope requestScope sessionScope applicationScope

//如果不指定作用域对象 会从作用域最低的对象搜索 pageContext < request < sesson < application
//虽然可以不指定作用域 影响搜素效率 建议大家指定作用域
pageContext.setAttribute("id",1);
request.setAttribute("id",2);
session.setAttribute("id",3);
application.setAttribute("id",4);
%>

${id }
	
</body>
</html>