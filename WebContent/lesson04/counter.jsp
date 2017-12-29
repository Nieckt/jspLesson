<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	.box{
		width: 360px;
		height: 475px;
		border: 1px solid #555555;
		margin: 100px auto;
	}
	
	#bottom {
		overflow: hidden;
		width: 340px;
		height: 340px;
		border: 1px solid #AAAAAA;
		margin: 10px auto;
	}
	#bottomleft {
		width: 347px;
		height: 380px;
		float: left;
		text-align: center;
	}
	#bottomleft input{
		display: inline - block;
		width: 73px;
		height: 73px;
		border: 1px solid #999999;
		text-align: center;
		line-height: 80px;
		font-family: arial;
		margin-left:10px ;
		float: left;
		margin-top: 10px;
		margin-bottom: 0;
		background-color: #ffffff;
	}
	#top{
		width:340px;
		margin:10px auto;
		border: 1px solid #999999;
	}
	#top input{
		padding-right: 20px;
		width: 340px;
		text-align: right;
		height:50px;
		box-sizing: border-box;
		border: 0px solid white;
		font-size: 26px;
	}
	#top #inp {
		padding-top:25px;
	}
	#bottomlebo .o {
		width: 150px;
	}
	
</style>
<script>
	function dianji(num1) {
		var oInput = document.getElementsByTagName('input');
		if(oInput[1].value == 0) {
			oInput[1].value = num1;
		}else{
			oInput[1].value += num1
		}
	}
	
	function func(f) {
		var oInput = document.getElementsByTagName('input');
		oInput[19].value = oInput[1].value;
		oInput[0].value = oInput[1].value + f;
		oInput[18].value = f;
		oInput[1].value = "";
	}
	
	function dy() {
		var oInput = document.getElementsByTagName('input');
		oInput[20].value = oInput[1].value;
		oInput[0].value="";
	}

</script>
<body>
	<div class="box">
		<form action="counter.jsp">
			<div id="top">
				<input type="text" name="result" value="${param.result}" id = "inp"/>
				<input type="text" name="result" value="${param.add=='+'?param.count1+param.count:(param.add=='-'?param.count1-param.count:(param.add=='*'?param.count*param.count1:(param.add=='/'?param.count1/param.count:0)))}" id="value"/>
			</div>
			<div id="bottom">
				<div id="bottomleft">
					<input type="button" name="num1" value="1" onclick="dianji(1)"/>
					<input type="button" name="num2" value="2" onclick="dianji(2)"/>
					<input type="button" name="num3" value="3" onclick="dianji(3)"/>
					<input type="button" name="num"  value="+" onclick="func('+')"/>
					<input type="button" name="num4" value="4" onclick="dianji(4)"/>
					<input type="button" name="num5" value="5" onclick="dianji(5)"/>
					<input type="button" name="num6" value="6" onclick="dianji(6)"/>
					<input type="button" name="num"  value="-" onclick="func('-')"/>
					<input type="button" name="num7" value="7" onclick="dianji(7)"/>
					<input type="button" name="num8" value="8" onclick="dianji(8)"/>
					<input type="button" name="num9" value="9" onclick="dianji(9)"/>
					<input type="button" name="num1" value="*" onclick="func('*')"/>
					<input type="button" name="num0" value="0" onclick="dianji(0)"/>
					<input type="button" name="num" value="." onclick="func('.')"/>
					<input type="submit" name="num" value="="  onclick="dy()"/>
					<input type="button" name="num" value="/" onclick="func('/')"/>
					
					<input type="hidden" name="add" id="add"/>
					<input type="hidden" name="count1" id="count1"/>
					<input type="hidden" name="count" id="count"/>
				</div>
			</div>
		</form>
	</div>
</body>
</html>