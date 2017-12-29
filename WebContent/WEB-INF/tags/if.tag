<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="test" type="java.lang.Boolean" %>

<% if(test) {
%>
	<!-- 打印自定义文件 -->
	<jsp:doBody></jsp:doBody>
<%
	}
%>