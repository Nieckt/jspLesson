<%@tag import="java.util.Collection"%>
<!-- for循环没有实现 -->
<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="var" type="java.lang.String" required="true"%>
<%@ attribute name="items" type="java.lang.Object" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	if(items instanceof Collection) {
		Collection<String> c = (Collection<String>)items;
		for(String ctemp : c) {
			//设置值
			request.setAttribute(var, ctemp);
%>
<jsp:doBody></jsp:doBody>
<%
		}
	}
	//类的名字以[开头的就是数组
	if(items.getClass().getName().startsWith("[")) {
		//强转为数组
		String[] c = (String[])items;
		for(String ctemp : c) {
		//设置值
		request.setAttribute(var, ctemp);
%>
<jsp:doBody></jsp:doBody>
<%
		}
	}
%>