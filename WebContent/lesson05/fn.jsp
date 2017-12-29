<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	${fn:trim('  hello java  ') }</br>
	<!-- 截取第二个参数（字符串）之前的字符串 -->
	${fn:substringBefore('asdaasefhdhg','aa') }</br>
	<!-- 截取第二个参数（字符串）之后的字符串 -->
	${fn:substringAfter('asdaasefhdhg','aa') }</br>
	<!-- 查看字符串是否包含另一个字符串 -->
	${fn:contains('ada','ad') }</br>
	<!-- 查看字符串是否包含另一个字符串忽略大小写  返回布尔值-->
	${fn:containsIgnoreCase('ada','adc') }</br> 
	<!-- 将所有字符串转为大写 -->
	${fn:toUpperCase('shfgdh') }</br>
	<!-- 将所有字符串转为小写 -->
	${fn:toLowerCase('SHFGDH') }</br>
	<!-- 查询一个字符串在另一个字符串中所在位置 -->
	${fn:indexOf('shfgdh','fg') }</br>
	<!-- 查看字符串以另一个字符串开头，返回boolean值  -->
	${fn:startsWith('shfgdh','sh') }</br>
	<!-- 查看字符串以另一个字符串结尾，返回boolean值  -->
	${fn:endsWith('shfgdh','dh') }</br>
	<!-- 截取字符串，第二个参数为开始位置，第三个参数为结束位置  -->
	${fn:substring('shfgdh',2,5) }</br>
	<!-- 不转译 -->
	${fn:escapeXml('${1+1 }')}</br>
	<!-- 将指定字符串用另一个字符串代替  -->
	${fn:replace('adsfghjklzxcvbasnbm','a','oo')}</br>
	<!-- 切割字符串  -->
	${fn:split('ads,f,gh,jk,lz,xc,vb,as,nb,m',',')}</br>
	<!-- 返回字符串的长度  -->
	${fn:length('ads,f,gh,jk,lz,xc,vb,as,nb,m')}</br>
	<!-- 将数组以指定字符串连接起来 -->
	<%-- ${fn:join()}</br> --%>
	
</body>
</html>