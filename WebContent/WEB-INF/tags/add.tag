<!-- 定义字符集 -->
<%@tag pageEncoding="UTF-8" %>
<!-- 定义属性 attribute：属性的意思 -->
<%@attribute name="p1" type="java.lang.Double"%>
<%@attribute name="p2" type="java.lang.Double"%>

<%double result = p1+p2;%>
<%=result %>