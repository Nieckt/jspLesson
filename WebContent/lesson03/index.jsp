<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	
</script>
<style>
	/* css初始化 */
/* 清除外边距内边距 */
html,body,ul,li,ol,dl,dd,dt,p,h1,h2,h3,h4,h5,h6,form,fieldset,legend,img,{margin:0; padding:0;} 
/* 表单边框去掉 外边距 内边距 外边条蓝边框 */
body{
	margin: 0;
	padding:0;
}
fieldset,img,input,button{border:none; padding:0;margin: 0; outline-style: none;}
ul,ol{list-style: none;}
input{padding-top: 0; padding-bottom: 0; font-family: "Simsun","宋体";}
select,input{vertical-align: middle;} /* vertical-align垂直对其 */
select,input,textarea{font-size: 12px;margin:0;}
textarea{resize:none;} /* 防止拖动 */
img{border:0;vertical-align: middle;} /* 去掉图片底侧默认的3像素空白缝隙 */
table{border-collapse: collapse;} /* 合并边框 */
body{
	font:12px/150% Arial,Verdana,"\5b8b\4f53";
	color: #666;
	background:#fff;
} /* "\5b8b\4f53"宋体 */
  /* 清除浮动 */
.clearfix:before,.clearfix:after{
	content: "";
	display:table;
}
.clearfix:after{clear:both;}
.clearfix{
	*zoom:1;/*IE/7/6*/
}
a{color:#666;text-decoration: none;}
a:hover{color: #c81623;}
h1,h2,h3,h4,h5,h6{text-decoration:none; font-weight: normal; font-size: 100%;} /*字体改为正常的  所有h标签字体设置为一样大 */
s,i,em{font-style: normal; text-decoration:none;} /* 字体改为正常的 去掉删除线 */
.col-red{color:#c81623!important;} /* !important重要的 */
/* 公共类 */
.w{   /* 版心 提取 */
	width:1210px; margin: 0 auto;
}
.fl{
	float: left;
}
.fr{
	float: right;
}
.al{
	text-align: left;
}
.ac{
	text-align: center;
}
.ar{
	text-align:right;
}
.hide{
	display: none;
}
.shortcut{
	height: 30px;
	line-height: 30px;
	background-color:#f1f1f1;
	width: 100%;
}
/* .fl{
	position: relative;
}
.fl i{
	font:400 15px/15px "宋体";
	position: absolute;
	right: 20px;
	top:9px;
	height: 7px;
} 子绝父相
.dt{
	padding:0 25px 0 10px;
}
.fl s{
	position: absolute; 
	top: 0;
	left: 0;
}绝对定位 */
.dt,
.shortcut .fore{
	padding:0 20px 0 10px;
	position: relative;
}
.dt i,
.fore i{
	font:400 15px/15px "宋体";
	position: absolute;
	top:13px;
	right:3px;
	height: 7px;
	overflow: hidden;
	width:15px;
}
.dt s,
.fore s{
	position: absolute;
	top: -8px;
	left: 0;
}
.fr li{
	float: left;
	padding:0 10px;
	margin-top: -10px;
}
.fr .line{
	width:1px;
	height: 12px;
	background-color:#ddd;
	margin-top:-1px;
	padding:0;
}
.shortcut .tel-jd{
	padding: 0 25px;
}
.tel{
	position: absolute;
	width:15px;
	height: 20px;
	background:url(../sprite.png) no-repeat;
	left: 5px;
	top: 5px;
} 
.banner{
	height: 120px;
	background-color:blue;
}
.sousuo{
	height: 100px;
	width: 1210px;
	margin:0 auto;
	margin-top: 20px;
}
.sousuo .logo{
	width: 350px;
	height: 100px;
	float: left;
}
.serach{
	width: 538px;
	height: 35px;
	float: left;
	background-color: green;
}
.serach input{
	width:450px;
	height: 32px;
	border: 2px solid #B61D1D;
	padding-left: 4px; 
	color:#666;
	/* font-size: 14px;
	font-family:"微软雅黑"; */
	font: 14px/32px "microsoft yahei";
	float: left;
}
.serach button{
	width: 80px;
	height: 36px;
	background-color: #B61D1D;
	color: #fff;
	font: 16px/36px "microsoft yahei";
	cursor: pointer;
}
.car{
	width: 96px;
	padding-left: 43px;
	height: 34px;
	float: right;
	/* margin: 25px 65px 0 0; */
	border: 2px solid #dfdfdf;
	line-height: 34px;
}
.icon1{
	position:absolute;
	width: 16px;
	height: 13px;
	background:url(../sprite.png) no-repeat;
	margin-top:10px;
	margin-right:300px;
}
#div{
	
	display: none;
}

.bottom {
	width:100%;
	height:100px;
	background-color: #c81623;
	position: absolute;
	bottom: 0;
	right: 0;
}

.bottom p {
	text-align:center;
	margin: 0 auto;
	color:white;
	line-height: 100px;
	font-size: 18px;
	font-family: "微软雅黑";
}
	
</style>
<body>
	<div class="shortcut">
		<div class="w">
			<div class="fl">
				<div class="dt">
					送至：北京 <i><s>◇</s></i>
					<div id="div1"></div>
				</div>
			</div>
			<div class="fr">
				<ul>
					<li><a href="#">你好，请登录</a>&nbsp;&nbsp; <a href="#"
						class="col-red">免费注册</a></li>
					<li class="line"></li>
					<li>我的订单</li>
					<li class="line"></li>
					<li class="fore">我的京东 <i><s>◇</s></i>
					</li>
					<li class="line"></li>
					<li>京东会员</li>
					<li class="line"></li>
					<li>企业采购</li>
					<li class="line"></li>
					<li class="fore tel-jd"><em class="tel"></em> 手机京东 <i><s>◇</s></i>
					</li>
					<li class="line"></li>
					<li class="fore">关注京东 <i><s>◇</s></i>
					</li>
					<li class="line"></li>
					<li class="fore">客户服务 <i><s>◇</s></i>
					</li>
					<li class="line"></li>
					<li class="fore">网站导航 <i><s>◇</s></i>
					</li>
				</ul>
			</div>
		</div>

	</div>
	<!--搜索栏-->
	<div class="banner"></div>
	<div class="sousuo">

		<div class="logo w">
			<a href=""></a>
			<div class="db11"></div>
		</div>
		<div class="serach">
			<input type="text" value="图书开抢">
			<button>搜索</button>
		</div>
		<div class="car">
			我的购物车 <span class="icon1"></span> <span class="icon2"></span> <span
				class="icon3"></span>
		</div>
	</div>
	<div class = "bottom">
		<p>京东购物</p>
	</div>
</body>
</html>