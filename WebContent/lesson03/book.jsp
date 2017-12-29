<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
			//window.onload = function() {
				var sichuan = ["成都","绵阳","自贡","广元","遂宁"];
				var zhejiang = ["杭州","义乌","金华","绍兴","乌镇","西塘","宁波"];
				var doc = window.document;
				function dili() {
					var oPr = document.getElementById('provate');
					var oCi = document.getElementById('city');
					//var oSe = document.getElementsByTagName('select')
					//把之前所有城市清除掉
					oCi.options.length = 1;
					
					var index = oPr.selectedIndex;
					var value = oPr.getElementsByTagName('option')[index].value;
					if(value == "浙江") {
						for(var i = 0; i < zhejiang.length; i++) {
							var opts = doc.createElement("option");
							opts.innerHTML = zhejiang[i];
							oCi.appendChild(opts);
						}
					}else if(value == "四川") {
						for(var i = 0; i < sichuan.length; i++) {
							var opts = doc.createElement("option");
							opts.innerHTML = sichuan[i];
							oCi.appendChild(opts);
						}
					}
				}
				
			//}
		</script>
<body>
<jsp:include page="index.jsp"></jsp:include>
<select id="provate" onchange="dili();">
			<option value="四川" >四川</option>
			<option value="浙江">浙江</option>
		</select>
		<select id="city">
			<option value="">请选择</option>
		</select>
		<!--<select>
			<option value="杭州">杭州</option>
			<option value="义乌">义乌</option>
		</select>-->
</body>
</html>