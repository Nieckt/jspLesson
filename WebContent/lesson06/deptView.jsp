<!-- jsp是MVC设计模式中的View层
	主要是和用户进行交互（肉眼看到的界面）只允许出现html标记 el表达式 标签
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/dept">
		<input type="text" name="qsex" />	
		<input type="submit" value="提交">
	</form>
	
	<table>
		<!-- 去不到值 -->
		<tr><th>员工编号</th><th>员工姓名</th><th>员工薪水</th></tr>
		
		<c:forEach var="tmp" items="${requestScope.tableList.data}">
			<tr><td>${pageScope.tmp.EMPNO}</td><td>${pageScope.tmp.ENAME}</td><td>${pageScope.tmp.SAL}</td></tr>
		</c:forEach>
		<tr><td>
			${request.tableList.prePage}
			${request.tableList.nextPage}
			${request.tableList.totalPage}
			<a href="${pageContext.request.contextPath}/dept?curPage=1 ">首页</a>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.tableList.prePage} ">上一页</a>
			<c:forEach var="i" begin="1" end="${requestScope.tableList.totalPage}" step="1">
				<a href="${pageContext.request.contextPath }/dept?curPage=${pageScope.i}">${pageScope.i}</a>
			</c:forEach>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.tableList.nextPage} ">下一页</a>
			<a href="${pageContext.request.contextPath}/dept?curPage=${requestScope.tableList.totalPage} ">尾页</a>
		</td></tr>
	</table> 
	<!-- 这里有问题不应该用这个方法拿值 
	<jsp:useBean id="dept" class="cn.et.model.MyDept"></jsp:useBean>
	${pageScope.dept.table}
	-->
</body>
</html>