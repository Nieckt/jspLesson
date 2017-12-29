<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#box {
	width: 990px;
	margin: 0 auto;
	height: 180px;
}
#box div {
	float: left;
	margin-left: 10px;
}

#box div {
	transition: all 0.5s;
	box-sizing: border-box;
}

#box div:hover {
	box-shadow: 0 0 10px 0 #000;
}
</style>
</body>
<jsp:include page="index.jsp"></jsp:include>
<div id="box">
	<div>
		<img src="1.jpg" />
	</div>
	<div>
		<img src="2.jpg" />
	</div>
	<div>
		<img src="3.jpg" />
	</div>
</div>
</body>
</html>