<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 获取时间对象 -->
	<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
	<%-- ${pageScope.date} --%>
	<fmt:formatDate value="${pageScope.date}" pattern="yyyy-MM-dd HH:mm:ss"/></br>
	<!-- parseDate 将字符串转为日期类型-->
	<fmt:parseDate value="2017/12/30" pattern="yyyy/MM/dd"></fmt:parseDate></br>
	<!-- formatNumber 将数字格式化输出 -->
	<fmt:formatNumber value="123.23121" pattern="###.###"></fmt:formatNumber></br>
	
	<!-- 設置 请求浏览器的locale对象-->
	<fmt:setLocale value="${pageContext.request.locale}"></fmt:setLocale>
	<!-- 设置读取的资源文件的basename -->
	<fmt:setBundle basename="my"></fmt:setBundle>
	<!-- 读取资源文件的消息 -->
	<fmt:message key="userName"></fmt:message>
</body>
</html>